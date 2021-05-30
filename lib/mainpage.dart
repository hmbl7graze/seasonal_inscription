import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'providers.dart';
import 'settingpage.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            title: const Text('今日の御銘'),
            leading: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: IconButton(
                icon: const Icon(Icons.add_alarm),
                onPressed: () =>  Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (context) => SettingPage()
                  ),
                ),
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: 60,
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '1月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '2月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '3月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '4月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '5月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '6月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '7月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '8月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '9月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '10月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '11月',
                style: TextStyle(color: Colors.white),
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
              color: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                '12月',
                style: TextStyle(color: Colors.white),
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
    );
  }
}

class _MonthlyExpansionPanelList extends HookWidget {
  const _MonthlyExpansionPanelList(this.monthlyItemListState);

  final StateNotifierProvider<MonthlyItemListState, List<Item>>
    monthlyItemListState;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        if(!isExpanded){
          context.read(monthlyItemListState.notifier).expandPanel(index);
        }
        else{
          context.read(monthlyItemListState.notifier).closePanel(index);
        }
      },
      children: useProvider(monthlyItemListState)
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