import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:seasonal_inscription/poetic_name_data.dart';

import 'custom_expansionpane_llist.dart';
import 'license_page.dart';
import 'providers.dart';
import 'purchase_page.dart';
import 'settingpage.dart';
import 'today_name_dialog.dart';

class MainPage extends HookWidget{
  final BannerAd januaryBanner = _createMonthlyBannerAd(Month.january);

  @override
  Widget build(BuildContext context){
    januaryBanner.load();

    //final adWidget = AdWidget(ad: januaryBanner);
    //final adContainer = Container(
    //  alignment: Alignment.center,
    //  width: januaryBanner.size.width.toDouble(),
    //  height: januaryBanner.size.height.toDouble(),
    //  child: adWidget,
    //);
    return Scaffold(
      backgroundColor: Colors.lightGreen.withRed(200),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('通知設定'),
              leading: const Icon(Icons.add_alarm),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () =>  {
                Navigator.pop(context),
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (context) => SettingPage()
                  ),
                ),
              }
            ),
            ListTile(
              title: const Text('今日の御銘'),
              leading: const Icon(Icons.wb_twighlight),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => {
                Navigator.pop(context),
                showTodayNameDialog(context),
              }
            ),
            ListTile(
              title: const Text('アプリ内購入'),
              leading: const Icon(Icons.shopping_cart_outlined),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => {
                Navigator.pop(context),
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (context) => PurchasePage()
                  ),
                ),
              }
            ),
            ListTile(
              title: const Text('アプリ情報'),
              leading: const Icon(Icons.info_outline),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => {
                Navigator.pop(context),
                showAboutDialog(
                  context: context,
                  applicationVersion: '1.0.0',
                  applicationLegalese:
                  'This application has been approved for all audiences.',
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('更新履歴 \n'
                          '1.0.0: 初版リリース'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => CCLicensePage()
                          ),
                        );
                      },
                      child: const Text('コンテンツのライセンス情報'),
                    )
                  ],
                )
              },
            )
          ]
        )
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            floating: true,
            title: Text('今日の御銘', style: TextStyle(fontFamily: 'Hannari'),),
          ),
          //SliverStickyHeader(
          //  header: adContainer,
          //),
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
  StateProvider<bool> monthlyExpandedProvider;
  Color monthlyColor = Colors.lightGreen;
  const depth = 5;
  const bias = 200;
  switch(month){
    case Month.january:
      monthString = '1月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(januaryListProvider);
      monthlyExpandedProvider = januaryExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 11);
      break;
    case Month.february:
      monthString = '2月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(februaryListProvider);
      monthlyExpandedProvider = februaryExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 10);
      break;
    case Month.march:
      monthString = '3月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(marchListProvider);
      monthlyExpandedProvider = marchExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 9);
      break;
    case Month.april:
      monthString = '4月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(aprilListProvider);
      monthlyExpandedProvider = aprilExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 8);
      break;
    case Month.may:
      monthString = '5月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(mayListProvider);
      monthlyExpandedProvider = mayExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 7);
      break;
    case Month.june:
      monthString = '6月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(juneListProvider);
      monthlyExpandedProvider = juneExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 6);
      break;
    case Month.july:
      monthString = '7月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(julyListProvider);
      monthlyExpandedProvider = julyExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 5);
      break;
    case Month.august:
      monthString = '8月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(augustListProvider);
      monthlyExpandedProvider = augustExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 4);
      break;
    case Month.september:
      monthString = '9月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(septemberListProvider);
      monthlyExpandedProvider = septemberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 3);
      break;
    case Month.october:
      monthString = '10月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(octoberListProvider);
      monthlyExpandedProvider = octoberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 2);
      break;
    case Month.november:
      monthString = '11月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(novemberListProvider);
      monthlyExpandedProvider = novemberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth);
      break;
    case Month.december:
      monthString = '12月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(decemberListProvider);
      monthlyExpandedProvider = decemberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias);
      break;
  }
  final isExpanded = useProvider(monthlyExpandedProvider).state;
  return SliverStickyHeader(
    header: Container(
      height: 60,
      color: monthlyColor,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerLeft,
      child: ListTile(
        title: Text(monthString),
        trailing: isExpanded ?
          const Icon(Icons.arrow_drop_up) : const Icon(Icons.arrow_drop_down),
        onTap: () => {
          context.read(monthlyExpandedProvider).state = !isExpanded
        },
      )
    ),
    sliver: SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return isExpanded ? monthlyExpansionPanelList : Container();
        },
        childCount: useProvider(monthlyExpandedProvider).state ? 1 : 0,
        semanticIndexOffset: 2,
      ),
    ),
  );
}

final januaryExpandedProvider = StateProvider((ref) => false);
final februaryExpandedProvider = StateProvider((ref) => false);
final marchExpandedProvider = StateProvider((ref) => false);
final aprilExpandedProvider = StateProvider((ref) => false);
final mayExpandedProvider = StateProvider((ref) => false);
final juneExpandedProvider = StateProvider((ref) => false);
final julyExpandedProvider = StateProvider((ref) => false);
final augustExpandedProvider = StateProvider((ref) => false);
final septemberExpandedProvider = StateProvider((ref) => false);
final octoberExpandedProvider = StateProvider((ref) => false);
final novemberExpandedProvider = StateProvider((ref) => false);
final decemberExpandedProvider = StateProvider((ref) => false);

class _MonthlyExpansionPanelList extends HookWidget {
  const _MonthlyExpansionPanelList(this.monthlyItemListState);

  final StateNotifierProvider<MonthlyItemListState, List<Item>>
    monthlyItemListState;

  @override
  Widget build(BuildContext context) {
    return CustomExpansionPanelList(
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