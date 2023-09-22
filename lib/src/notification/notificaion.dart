
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:myapp/main.dart';
// import 'package:myapp/src/screens/home_page/home_page.dart';

// // final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

// Future<void> handleBackgroundMessage(RemoteMessage message)async{
//   print('title: ${message.notification?.title}');
//   print('Body: ${message.notification?.body}');
//   print('Payload: ${message.data}');
// }

// class FirebaseApi {
//   final _firebaseMessaging = FirebaseMessaging.instance;

//   void handleMessage(RemoteMessage? message){
//     if(message==null) return;

//     navigatorKey.currentState?.pushNamed(
//       HomePage.route,
//       arguments: message,
//     );
//     FirebaseMessaging.instance.getInitialMessage().then(handleMessage) ;
//     FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
//     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
//   }

//   Future initPushNotification()async{
//     await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//   }

//   Future<void> initNotification()async{
//     await _firebaseMessaging.requestPermission();
//     final fCMToken = await _firebaseMessaging.getToken();
//     print('Token : $fCMToken');
//     initNotification();
//     // FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
//   }
// }

// // class Notification {
// //   static final _notification = FlutterLocalNotificationsPlugin();
// //   static Future _notificationdetails() async{
// //     return NotificationDetails(
// //       android: AndroidNotificationDetails(
// //         'channel id',
// //         'channel name',
// //         'channel description',
// //         ),
// //       iOS: IOSN(),
// //     );
// //   }

// //   static Future showNotification ({
// //     int id =0,
// //     String? title,
// //     String? body,
// //     String? paylod,
// //   })async => _notification.show(
// //     id,
// //     title, 
// //     body,
// //     await _notificationdetails(), 
// //     payload: paylod,
// //     )
// // }