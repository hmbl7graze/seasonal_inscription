import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('購入', style: TextStyle(fontFamily: 'Hannari'),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
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
                        onPressed: () => onPurchaseButtonClick(context),
                        child: const Text('購入する(￥300)',
                          style: TextStyle(fontSize: 21),),
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

  void onPurchaseButtonClick(BuildContext context){
    Navigator.pop(context);
  }

  void onRestoreButtonClick(BuildContext context){
    Navigator.pop(context);
  }
}