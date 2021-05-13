import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'poetic_name_data.dart';

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
    this.data,
    this.isExpanded = false,
  });

  Data data;
  bool isExpanded;
}

List<Item> generateItems(int month) {
  final monthlyDataList
   = dataList.where((Data data) => data.month == month).toList();
  return List<Item>.generate(monthlyDataList.length, (int index) {
    return Item(
      data: monthlyDataList[index],
    );
  });
}

class ExpansionStatefulWidget extends StatefulWidget {
  const ExpansionStatefulWidget({Key key, this.month}) : super(key: key);
  final int month;

  @override
  _ExpansionStatefulWidgetState createState()
   => _ExpansionStatefulWidgetState();
}

class _ExpansionStatefulWidgetState extends State<ExpansionStatefulWidget> {
  final List<Item> _data = generateItems(1);

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