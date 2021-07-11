import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'mainpage.dart';
import 'notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();

  await Hive.initFlutter();
  await Hive.openBox<List<int>>('NotificationSchedule');
  await Hive.openBox<DateTime>('LatestOpenDate');

  await initializeNotification();

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
