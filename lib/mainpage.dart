import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:seasonal_inscription/poetic_name_data.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_expansionPanel_list.dart';
import 'hive_service.dart';
import 'license_page.dart';
import 'providers.dart';
import 'purchase_page.dart';
import 'setting_page.dart';
import 'today_name_dialog.dart';

class MainPage extends HookWidget{

  @override
  Widget build(BuildContext context){
    for(final bannerAd in bannerAdList){
      bannerAd.load();
    }

    if(context.read(isPurchaseProvider).state != getIsPurchase()){
      context.read(isPurchaseProvider).state = getIsPurchase();
    }

    //日付が変わっていたらおすすめ画面を出す
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final now = DateTime.now();
      final dateNow = DateTime(now.year, now.month, now.day);
      final latestOpenDate = getLatestOpenDate();
      if(latestOpenDate == null){
        setLatestOpenDate(dateNow);
      }
      else if(dateNow.difference(latestOpenDate).inDays != 0){
        showTodayNameDialog(context);
        setLatestOpenDate(dateNow);
      }
    });

    return Scaffold(
      backgroundColor: Colors.lightGreen.withRed(200),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
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
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Linkify(
                        onOpen: (LinkableElement link) async {
                          if (await canLaunch(link.url)) {
                            await launch(link.url);
                          }
                          else {
                              throw 'Could not launch $link';
                          }
                          },
                        text: 'プライバシーポリシー\n'
                            'https://hmbl7graze.github.io/seasonal_inscription/PrivacyPolicy/PrivacyPolicy',
                      ),
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
  BannerAd bannerAd;
  const depth = 5;
  const bias = 200;
  switch(month){
    case Month.january:
      monthString = '1月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(januaryListProvider);
      monthlyExpandedProvider = januaryExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 11);
      bannerAd = bannerAdList[0];
      break;
    case Month.february:
      monthString = '2月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(februaryListProvider);
      monthlyExpandedProvider = februaryExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 10);
      bannerAd = bannerAdList[1];
      break;
    case Month.march:
      monthString = '3月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(marchListProvider);
      monthlyExpandedProvider = marchExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 9);
      bannerAd = bannerAdList[2];
      break;
    case Month.april:
      monthString = '4月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(aprilListProvider);
      monthlyExpandedProvider = aprilExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 8);
      bannerAd = bannerAdList[3];
      break;
    case Month.may:
      monthString = '5月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(mayListProvider);
      monthlyExpandedProvider = mayExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 7);
      bannerAd = bannerAdList[4];
      break;
    case Month.june:
      monthString = '6月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(juneListProvider);
      monthlyExpandedProvider = juneExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 6);
      bannerAd = bannerAdList[5];
      break;
    case Month.july:
      monthString = '7月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(julyListProvider);
      monthlyExpandedProvider = julyExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 5);
      bannerAd = bannerAdList[6];
      break;
    case Month.august:
      monthString = '8月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(augustListProvider);
      monthlyExpandedProvider = augustExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 4);
      bannerAd = bannerAdList[7];
      break;
    case Month.september:
      monthString = '9月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(septemberListProvider);
      monthlyExpandedProvider = septemberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 3);
      bannerAd = bannerAdList[8];
      break;
    case Month.october:
      monthString = '10月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(octoberListProvider);
      monthlyExpandedProvider = octoberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth * 2);
      bannerAd = bannerAdList[9];
      break;
    case Month.november:
      monthString = '11月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(novemberListProvider);
      monthlyExpandedProvider = novemberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias - depth);
      bannerAd = bannerAdList[10];
      break;
    case Month.december:
      monthString = '12月';
      monthlyExpansionPanelList =
          _MonthlyExpansionPanelList(decemberListProvider);
      monthlyExpandedProvider = decemberExpandedProvider;
      monthlyColor = Colors.lightGreen.withRed(bias);
      bannerAd = bannerAdList[11];
      break;
  }
  final isExpanded = useProvider(monthlyExpandedProvider).state;
  final isPurchase = useProvider(isPurchaseProvider).state;
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
              if(!isExpanded){
                return Container();
              }
              if(!isPurchase){
                if(index == 0){
                  return monthlyExpansionPanelList;
                }
                if(index == 1){
                  final data = dataList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Stack(
                      children: <Widget>[
                        // 背景画像
                        CustomExpansionPanelList(
                          children: <ExpansionPanel>[ExpansionPanel(
                            headerBuilder: (BuildContext context,bool isExpand){
                              return ListTile(
                                title: Text(data.name),
                                subtitle: Text(data.reading),
                              );
                            },
                            body: ListTile(
                              title: Text(data.detail),
                            ),
                          )],
                        ),
                        // ブラー
                        ClipRect(
                          child:BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                            child: Container(
                              color: Colors.black.withOpacity(0),
                              child: ListTile(
                                onTap: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                        builder: (context) => PurchasePage()
                                    ),
                                  ),
                                }
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }
                if(index == 2){
                  return ListTile(
                    leading: const Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    title: const Text('購入すると300種以上の御銘が確認できます'),
                    tileColor: Colors.white,
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => PurchasePage()
                        ),
                      ),
                    }
                  );
                }
                else{
                  return Container(
                    alignment: Alignment.center,
                    width: bannerAd.size.width.toDouble(),
                    height: bannerAd.size.height.toDouble(),
                    child: AdWidget(ad: bannerAd),
                  );
                }
              }
              else{
                return monthlyExpansionPanelList;
              }
            },
        childCount: useProvider(monthlyExpandedProvider).state ?
          _calculateChildCount() :
          0,
        semanticIndexOffset: 2,
      ),
    ),
  );
}

int _calculateChildCount(){
  if(useProvider(isPurchaseProvider).state) {
    return 1;
  }
  else {
    return 4;
  }
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

List<BannerAd> bannerAdList =[
  _createMonthlyBannerAd(Month.january),
  _createMonthlyBannerAd(Month.february),
  _createMonthlyBannerAd(Month.march),
  _createMonthlyBannerAd(Month.april),
  _createMonthlyBannerAd(Month.may),
  _createMonthlyBannerAd(Month.june),
  _createMonthlyBannerAd(Month.july),
  _createMonthlyBannerAd(Month.august),
  _createMonthlyBannerAd(Month.september),
  _createMonthlyBannerAd(Month.october),
  _createMonthlyBannerAd(Month.november),
  _createMonthlyBannerAd(Month.december),
];

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
          : 'ca-app-pub-1175513766978931/9306277985';
    case Month.february:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/6335310349';
    case Month.march:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/1769734592';
    case Month.april:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/7265248634';
    case Month.may:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/1821350263';
    case Month.june:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/9316696905';
    case Month.july:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/2751288557';
    case Month.august:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/3872798530';
    case Month.september:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/6115818491';
    case Month.october:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/5924246802';
    case Month.november:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/5732675111';
    case Month.december:
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-1175513766978931/1601858410';
  }
  return'';
}