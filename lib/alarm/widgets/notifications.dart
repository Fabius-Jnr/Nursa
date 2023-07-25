// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// Future<void> scheduleAlarm(
//   DateTime dateTime,
//   String title,
//   String body,
// ) async {
//   var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
//     'channel_id',
//     'channel_name',
//     importance: Importance.max,
//     priority: Priority.high,
//     playSound: true,
//   );
//   var platformChannelSpecifics = NotificationDetails(
//     android: androidPlatformChannelSpecifics,
//   );

//   await flutterLocalNotificationsPlugin.zonedSchedule(
//     0,
//     title,
//     body,
//     dateTime,
//     platformChannelSpecifics,
//     uiLocalNotificationDateInterpretation:
//         UILocalNotificationDateInterpretation.absoluteTime,
//   );
// }