import 'package:flutter/material.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import 'hive_service.dart';

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

  void onRestoreButtonClick(BuildContext context){
    Navigator.pop(context);
  }
}