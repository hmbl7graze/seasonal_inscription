import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:seasonal_inscription/poetic_name_data.dart';

import 'providers.dart';
import 'settingpage.dart';

class MainPage extends HookWidget{
  final BannerAd januaryBanner = _createMonthlyBannerAd(Month.january);

  @override
  Widget build(BuildContext context){
    januaryBanner.load();

    final adWidget = AdWidget(ad: januaryBanner);
    final adContainer = Container(
      alignment: Alignment.center,
      width: januaryBanner.size.width.toDouble(),
      height: januaryBanner.size.height.toDouble(),
      child: adWidget,
    );
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
            header: adContainer,
          ),
          createMonthlySliverStickyHeader(context, Month.january),
          createMonthlySliverStickyHeader(context, Month.february),
          createMonthlySliverStickyHeader(context, Month.march),
          createMonthlySliverStickyHeader(context, Month.april),
          createMonthlySliverStickyHeader(context, Month.may),
          createMonthlySliverStickyHeader(context, Month.june),
          createMonthlySliverStickyHeader(context, Month.july),
          createMonthlySliverStickyHeader(context, Month.august),
          createMonthlySliverStickyHeader(context, Month.september),
          createMonthlySliverStickyHeader(context, Month.october),
          createMonthlySliverStickyHeader(context, Month.november),
          createMonthlySliverStickyHeader(context, Month.december),
        ],
      ),
    );
  }
}

SliverStickyHeader createMonthlySliverStickyHeader(
    BuildContext context,
    Month month
    ){
  String monthString;
  Widget monthlyExpansionPanelList;
  switch(month){
    case Month.january:
      monthString = '1月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(januaryListProvider);
      break;
    case Month.february:
      monthString = '2月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(februaryListProvider);
      break;
    case Month.march:
      monthString = '3月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(marchListProvider);
      break;
    case Month.april:
      monthString = '4月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(aprilListProvider);
      break;
    case Month.may:
      monthString = '5月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(mayListProvider);
      break;
    case Month.june:
      monthString = '6月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(juneListProvider);
      break;
    case Month.july:
      monthString = '7月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(julyListProvider);
      break;
    case Month.august:
      monthString = '8月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(augustListProvider);
      break;
    case Month.september:
      monthString = '9月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(septemberListProvider);
      break;
    case Month.october:
      monthString = '10月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(octoberListProvider);
      break;
    case Month.november:
      monthString = '11月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(novemberListProvider);
      break;
    case Month.december:
      monthString = '12月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(decemberListProvider);
      break;
  }
  return SliverStickyHeader(
    header: Container(
      height: 60,
      color: Colors.lightGreen,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        monthString,
      ),
    ),
    sliver: SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return monthlyExpansionPanelList;
        },
        childCount: 1,
        semanticIndexOffset: 2,
      ),
    ),
  );
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
              subtitle: Text(item.data.reading),
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

BannerAd _createMonthlyBannerAd(Month month){
  final adUnitId = _getAdUnitId(month);
  return BannerAd(
    adUnitId: adUnitId,
    size: AdSize.fullBanner,
    request: const AdRequest(),
    listener: const BannerAdListener(),
  );
}

String _getAdUnitId(Month month){
  switch(month){
    case Month.january:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.february:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.march:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.april:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.may:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.june:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.july:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.august:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.september:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.october:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.november:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    case Month.december:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
  }
  return'';
}