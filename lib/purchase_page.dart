import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import 'hive_service.dart';
import 'poetic_name_data.dart';
import 'providers.dart';

class PurchasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('購入', style: TextStyle(fontFamily: 'Hannari'),),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Text(
                        'プレミアム機能を購入すると下記の機能を使用できます'
                            '\n・300種以上の季節の御銘の閲覧'
                            '\n・広告の非表示',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                      child: ElevatedButton(
                        onPressed: getIsPurchase()
                            ? null : () => onPurchaseButtonClick(context),
                        child: getIsPurchase()
                          ? const Text('購入済みです',
                            style: TextStyle(fontSize: 21))
                          : const Text('購入する(￥370)',
                            style: TextStyle(fontSize: 21)),
      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Text(
                        '購入が反映されない場合は下記のボタンで復元します',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                      child: ElevatedButton(
                        onPressed: () => onRestoreButtonClick(context),
                        child: const Text('復元',
                          style: TextStyle(fontSize: 21),),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        )
      ),
    );
  }

  Future<void> onPurchaseButtonClick(BuildContext context) async {
    Offerings offerings;
    try {
      offerings = await Purchases.getOfferings();
      print(offerings.toString());
      print(offerings.current.toString());
      if(offerings != null && offerings.current != null) {
        await Purchases.purchasePackage(offerings.current.availablePackages[0]);
        final purchaserInfo = await Purchases.getPurchaserInfo();
        if(purchaserInfo.entitlements.all['premium'] != null){
          await setIsPurchase(
              purchaserInfo.entitlements.all['premium'].isActive
          );
        }
      }
    } on Exception catch(e){
      print(e);
    }
  }

  Future<void> onRestoreButtonClick(BuildContext context) async {
    final restoredInfo = await Purchases.restoreTransactions();
    if(restoredInfo.entitlements.all['premium'] != null){
      await setIsPurchase(
          restoredInfo.entitlements.all['premium'].isActive
      );
      context.read(isPurchaseProvider).state =
          restoredInfo.entitlements.all['premium'].isActive;

      context.read(januaryListProvider.notifier).refresh(Month.january);
      context.read(februaryListProvider.notifier).refresh(Month.february);
      context.read(marchListProvider.notifier).refresh(Month.march);
      context.read(aprilListProvider.notifier).refresh(Month.april);
      context.read(mayListProvider.notifier).refresh(Month.may);
      context.read(juneListProvider.notifier).refresh(Month.june);
      context.read(julyListProvider.notifier).refresh(Month.july);
      context.read(augustListProvider.notifier).refresh(Month.august);
      context.read(septemberListProvider.notifier).refresh(Month.september);
      context.read(octoberListProvider.notifier).refresh(Month.october);
      context.read(novemberListProvider.notifier).refresh(Month.november);
      context.read(decemberListProvider.notifier).refresh(Month.december);

      restoredInfo.entitlements.all['premium'].isActive
          ? await showRestoreDialog(context)
          : await showRestoreFailDialog(context);
    }
    else{
      await showRestoreFailDialog(context);
    }
  }

  Future showRestoreDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Card(
            elevation: 0,
            child: ListTile(
              title: Text('復元が完了しました', style: TextStyle(fontSize: 20)),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('閉じる'),
            ),
          ],
        );
      },
    );
  }

  Future showRestoreFailDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Card(
            elevation: 0,
            child: ListTile(
              title: Text(
                  '購入履歴が確認できませんでした',
                  style: TextStyle(fontSize: 20)
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('閉じる'),
            ),
          ],
        );
      },
    );
  }
}