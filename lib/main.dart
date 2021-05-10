import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              floating: true,
              title: Text('季節の御銘'),
            ),
            SliverStickyHeader(
              header: Container(
                height: 60,
                color: Colors.lightBlue,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '1月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return const ExpansionStatefulWidget();
                  },
                  childCount: 1,//ここでデータの数を取得していれる
                  semanticIndexOffset: 2,
                ),
              ),
            ),
            SliverStickyHeader(
              header: Container(
                height: 60,
                color: Colors.lightBlue,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '2月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return const ExpansionStatefulWidget();
                  },
                  childCount: 1,//ここでデータの数を取得していれる
                  semanticIndexOffset: 2,
                ),
              ),
            ),
            SliverStickyHeader(
              header: Container(
                height: 60,
                color: Colors.lightBlue,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '3月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return const ExpansionStatefulWidget();
                  },
                  childCount: 1,//ここでデータの数を取得していれる
                  semanticIndexOffset: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class ExpansionStatefulWidget extends StatefulWidget {
  const ExpansionStatefulWidget({Key key}) : super(key: key);

  @override
  _ExpansionStatefulWidgetState createState()
   => _ExpansionStatefulWidgetState();
}

class _ExpansionStatefulWidgetState extends State<ExpansionStatefulWidget> {
  final List<Item> _data = generateItems(10);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}