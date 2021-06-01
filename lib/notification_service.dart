import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

final flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> initializeNotification() async{
  const initializationSettingsAndroid =
  AndroidInitializationSettings('app_icon');
  const initializationSettingsIOS = IOSInitializationSettings();
  const initializationSettingsMacOS = MacOSInitializationSettings();
  const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  await configureLocalTimeZone();
}

Future<void> scheduleWeeklyNotification(
    int weekday, int hour, int min) async {
  await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'weekly scheduled notification title',
      'weekly scheduled notification body',
      _nextInstanceOfWeekday(weekday, hour, min),
      const NotificationDetails(
        android: AndroidNotificationDetails(
            'weekly notification channel id',
            'weekly notification channel name',
            'weekly notificationdescription'),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime);
}

tz.TZDateTime _nextInstanceOfWeekday(int weekday, int hour, int min) {
  final now = tz.TZDateTime.now(tz.local);
  var scheduledDate =
    tz.TZDateTime(tz.local, now.year, now.month, now.day, now.hour, now.minute);
  if (scheduledDate.isBefore(now)) {
    scheduledDate = scheduledDate.add(const Duration(minutes: 1));
  }
  //while (scheduledDate.weekday != weekday) {
    //scheduledDate = scheduledDate.add(const Duration(days: 1));
  //}
  return scheduledDate;
}

Future<void> configureLocalTimeZone() async {
  tz.initializeTimeZones();
  final timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(timeZoneName));
}

Future<void> showNotification() async {
  const androidPlatformChannelSpecifics =
  AndroidNotificationDetails(
      'your channel id1', 'your channel name', 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker');
  const iosChannelSpecifics = IOSNotificationDetails();
  const platformChannelSpecifics =
  NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iosChannelSpecifics
  );
  await flutterLocalNotificationsPlugin.show(
      0, 'plain title', 'plain body', platformChannelSpecifics,
      payload: 'item x');
}
