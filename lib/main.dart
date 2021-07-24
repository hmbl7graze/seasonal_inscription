import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import 'hive_service.dart';
import 'mainpage.dart';
import 'notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();

  await Hive.initFlutter();
  await Hive.openBox<List<int>>('NotificationSchedule');
  await Hive.openBox<DateTime>('LatestOpenDate');
  await Hive.openBox<bool>('IsPurchase');

  await Purchases.setDebugLogsEnabled(true);
  await Purchases.setup('lfyzjOYYLEwtvwRPeymNyyKaRJfsgEmv');

  await initializeNotification();

  await setIsPurchase(false);
  final purchaserInfo = await Purchases.getPurchaserInfo();
  if(purchaserInfo.entitlements.all['premium'] != null){
    await setIsPurchase(
        purchaserInfo.entitlements.all['premium'].isActive
    );
  }

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          scaffoldBackgroundColor: Colors.lightGreen[50],
          textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Hannari'),
        ),
      home: MainPage()
    );
  }
}
