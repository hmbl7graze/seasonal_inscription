import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'poetic_name_data.dart';
import 'providers.dart';

void main() => runApp(ProviderScope(child: MyApp()));

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
                        return _MonthlyExpansionPanelList(Month.january);
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
                        return _MonthlyExpansionPanelList(Month.february);
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
                        return _MonthlyExpansionPanelList(Month.march);
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

class _MonthlyExpansionPanelList extends HookWidget {
  _MonthlyExpansionPanelList(this.month){
    switch(month) {
      case Month.january:
        monthlyItemListState = januaryListProvider;
        break;
      case Month.february:
        monthlyItemListState = februaryListProvider;
        break;
      case Month.march:
        monthlyItemListState = marchListProvider;
        break;
      case Month.april:
      // TODO: Handle this case.
        break;
      case Month.may:
      // TODO: Handle this case.
        break;
      case Month.june:
      // TODO: Handle this case.
        break;
      case Month.july:
      // TODO: Handle this case.
        break;
      case Month.august:
      // TODO: Handle this case.
        break;
      case Month.september:
      // TODO: Handle this case.
        break;
      case Month.october:
      // TODO: Handle this case.
        break;
      case Month.november:
      // TODO: Handle this case.
        break;
      case Month.december:
      // TODO: Handle this case.
        break;
      case Month.allSeason:
      // TODO: Handle this case.
        break;
    }
  }
  Month month;
  StateNotifierProvider<MonthlyItemListState> monthlyItemListState;

  @override
  Widget build(BuildContext context) {
    final tempProvider = useProvider(monthlyItemListState);
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        if(!isExpanded){
          tempProvider.expandPanel(index);
        }
        else{
          tempProvider.closePanel(index);
        }
      },
      children: useProvider(monthlyItemListState.state)
                  .map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.data.name),
            );
          },
          body: ListTile(
            title: Text(item.data.detail),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}