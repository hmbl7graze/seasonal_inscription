import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
                        return _MonthlyExpansionPanelList(januaryListProvider);
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
                        return _MonthlyExpansionPanelList(februaryListProvider);
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
                        return _MonthlyExpansionPanelList(marchListProvider);
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
                  '4月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(aprilListProvider);
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
                  '5月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(mayListProvider);
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
                  '6月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(juneListProvider);
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
                  '7月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(julyListProvider);
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
                  '8月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(augustListProvider);
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
                  '9月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(septemberListProvider);
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
                  '10月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(octoberListProvider);
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
                  '11月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(novemberListProvider);
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
                  '12月',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return _MonthlyExpansionPanelList(decemberListProvider);
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
  _MonthlyExpansionPanelList(this.monthlyItemListState);

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