import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

const double _kPanelHeaderCollapsedHeight = kMinInteractiveDimension;
const EdgeInsets _kPanelHeaderExpandedDefaultPadding = EdgeInsets.symmetric(
  vertical: 64.0 - _kPanelHeaderCollapsedHeight,
);

class _SaltedKey<S, V> extends LocalKey {
  const _SaltedKey(this.salt, this.value);

  final S salt;
  final V value;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is _SaltedKey<S, V>
        && other.salt == salt
        && other.value == value;
  }

  @override
  int get hashCode => hashValues(runtimeType, salt, value);

  @override
  String toString() {
    final saltString = S == String ? "<'$salt'>" : '<$salt>';
    final valueString = V == String ? "<'$value'>" : '<$value>';
    return '[$saltString $valueString]';
  }
}


///  * [ExpansionPanel]
///  * [CustomExpansionPanelList.radio]
///  * <https://material.io/design/components/lists.html#types>
class CustomExpansionPanelList extends StatefulWidget {
  /// Creates an expansion panel list widget. The [expansionCallback] is
  /// triggered when an expansion panel expand/collapse button is pushed.
  ///
  /// The [children] and [animationDuration] arguments must not be null.
  const CustomExpansionPanelList({
    Key key,
    this.children = const <ExpansionPanel>[],
    this.expansionCallback,
    this.animationDuration = kThemeAnimationDuration,
    this.expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding,
    this.dividerColor,
    this.elevation = 0,
  }) : assert(children != null),
        assert(animationDuration != null),
        _allowOnlyOnePanelOpen = false,
        initialOpenPanelValue = null,
        super(key: key);

  const CustomExpansionPanelList.radio({
    Key key,
    this.children = const <ExpansionPanelRadio>[],
    this.expansionCallback,
    this.animationDuration = kThemeAnimationDuration,
    this.initialOpenPanelValue,
    this.expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding,
    this.dividerColor,
    this.elevation = 2,
  }) : assert(children != null),
        assert(animationDuration != null),
        _allowOnlyOnePanelOpen = true,
        super(key: key);

  final List<ExpansionPanel> children;

  final ExpansionPanelCallback expansionCallback;

  final Duration animationDuration;

  final bool _allowOnlyOnePanelOpen;

  final Object initialOpenPanelValue;

  final EdgeInsets expandedHeaderPadding;

  final Color dividerColor;

  final double elevation;

  @override
  State<StatefulWidget> createState() => _ExpansionPanelListState();
}

class _ExpansionPanelListState extends State<CustomExpansionPanelList> {
  ExpansionPanelRadio _currentOpenPanel;

  @override
  void initState() {
    super.initState();
    if (widget._allowOnlyOnePanelOpen) {
      assert(
        _allIdentifiersUnique(),
        'All ExpansionPanelRadio identifier values must be unique.'
      );
      if (widget.initialOpenPanelValue != null) {
        _currentOpenPanel =
            searchPanelByValue(
                widget.children.cast<ExpansionPanelRadio>(),
                widget.initialOpenPanelValue
            );
      }
    }
  }

  @override
  void didUpdateWidget(CustomExpansionPanelList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget._allowOnlyOnePanelOpen) {
      assert(
        _allIdentifiersUnique(),
        'All ExpansionPanelRadio identifier values must be unique.'
      );
      // If the previous widget was non-radio ExpansionPanelList, initialize the
      // open panel to widget.initialOpenPanelValue
      if (!oldWidget._allowOnlyOnePanelOpen) {
        _currentOpenPanel =
            searchPanelByValue(
                widget.children.cast<ExpansionPanelRadio>(),
                widget.initialOpenPanelValue
            );
      }
    } else {
      _currentOpenPanel = null;
    }
  }

  bool _allIdentifiersUnique() {
    final identifierMap = <Object, bool>{};
    for (final child in widget.children.cast<ExpansionPanelRadio>()) {
      identifierMap[child.value] = true;
    }
    return identifierMap.length == widget.children.length;
  }

  bool _isChildExpanded(int index) {
    if (widget._allowOnlyOnePanelOpen) {
      final radioWidget = widget.children[index] as ExpansionPanelRadio;
      return _currentOpenPanel?.value == radioWidget.value;
    }
    return widget.children[index].isExpanded;
  }

  void _handlePressed(bool isExpanded, int index) {
    widget.expansionCallback?.call(index, isExpanded);

    if (widget._allowOnlyOnePanelOpen) {
      final pressedChild = widget.children[index] as ExpansionPanelRadio;

      // If another ExpansionPanelRadio was already open, apply its
      // expansionCallback (if any) to false, because it's closing.
      for (var childIndex = 0;
      childIndex < widget.children.length;
      childIndex += 1
      ) {
        final child = widget.children[childIndex] as ExpansionPanelRadio;
        if (widget.expansionCallback != null &&
            childIndex != index &&
            child.value == _currentOpenPanel?.value) {
          widget.expansionCallback(childIndex, false);
        }
      }

      setState(() {
        _currentOpenPanel = isExpanded ? null : pressedChild;
      });
    }
  }

  ExpansionPanelRadio searchPanelByValue(
      List<ExpansionPanelRadio> panels,
      Object value
      )  {
    for (final panel in panels) {
      if (panel.value == value) {
        return panel;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    assert(kElevationToShadow.containsKey(widget.elevation),
    'Invalid value for elevation. See the kElevationToShadow constant for'
        ' possible elevation values.',
    );

    final items = <MergeableMaterialItem>[];

    for (var index = 0; index < widget.children.length; index += 1) {
      if (_isChildExpanded(index) &&
          index != 0 && !_isChildExpanded(index - 1)
      ) {
        items.add(MaterialGap(
            key: _SaltedKey<BuildContext, int>(context, index * 2 - 1)
        ));
      }

      final child = widget.children[index];
      final headerWidget = child.headerBuilder(
        context,
        _isChildExpanded(index),
      );

      Widget expandIconContainer = Container(
        color: Colors.transparent,
        margin: const EdgeInsetsDirectional.only(end: 8),
        child: ExpandIcon(
          isExpanded: _isChildExpanded(index),
          padding: const EdgeInsets.all(16),
          onPressed: !child.canTapOnHeader
              ? (bool isExpanded) => _handlePressed(isExpanded, index)
              : null,
        ),
      );
      if (!child.canTapOnHeader) {
        final localizations = MaterialLocalizations.of(context);
        expandIconContainer = Semantics(
          label: _isChildExpanded(index)?
            localizations.expandedIconTapHint :
            localizations.collapsedIconTapHint,
          container: true,
          child: expandIconContainer,
        );
      }
      Widget header = Row(
        children: <Widget>[
          Expanded(
            child: AnimatedContainer(
              duration: widget.animationDuration,
              curve: Curves.fastOutSlowIn,
              margin: _isChildExpanded(index) ?
                widget.expandedHeaderPadding :
                EdgeInsets.zero,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                    minHeight: _kPanelHeaderCollapsedHeight
                ),
                child: headerWidget,
              ),
            ),
          ),
          expandIconContainer,
        ],
      );
      if (child.canTapOnHeader) {
        header = MergeSemantics(
          child: InkWell(
            onTap: () => _handlePressed(_isChildExpanded(index), index),
            child: header,
          ),
        );
      }
      double _radiusValue;
      if (_isChildExpanded(index)) {
        _radiusValue = 20.0;
      } else {
        _radiusValue = 0.0;
      }
      items.add(
        MaterialSlice(
          key: _SaltedKey<BuildContext, int>(context, index * 2),
          color: Colors.lightGreen[50],
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.all(Radius.circular(_radiusValue)),
            child:Column(
              children: <Widget>[
                header,
                AnimatedCrossFade(
                  firstChild: Container(height: 0),
                  secondChild: child.body,
                  firstCurve: const Interval(
                      0, 0.6,
                      curve: Curves.fastOutSlowIn
                  ),
                  secondCurve: const Interval(
                      0.4, 1,
                      curve: Curves.fastOutSlowIn
                  ),
                  sizeCurve: Curves.fastOutSlowIn,
                  crossFadeState: _isChildExpanded(index) ?
                    CrossFadeState.showSecond :
                    CrossFadeState.showFirst,
                  duration: widget.animationDuration,
                ),
              ],
            ),
          )
        ),
      );

      if (_isChildExpanded(index) && index != widget.children.length - 1) {
        items.add(MaterialGap(
            key: _SaltedKey<BuildContext, int>(context, index * 2 + 1),
        ));
      }
    }

    return MergeableMaterial(
      hasDividers: true,
      dividerColor: widget.dividerColor,
      elevation: widget.elevation.round(),
      children: items,
    );
  }
}