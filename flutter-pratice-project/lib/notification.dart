import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FlutterLocalNotification {
  FlutterLocalNotification._();

  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = 
    FlutterLocalNotificationsPlugin();
  
  static bool _initialized = false;


  static Future<void> init() async{
    if(_initialized) return;

    AndroidInitializationSettings androidInitializationSettings =
      const AndroidInitializationSettings('mipmap/ic_launcher');
    
    DarwinInitializationSettings iosInitializationSettings =
      const DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
    );

    final InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
    _initialized = true;
  }

  static requestNotificationPermisson(){
    flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(alert: true, badge: true, sound: true);
  }

  static Future<void> showNotification() async{
    if (!_initialized) {
      throw Exception('FlutterLocalNotificationsPlugin is not initialized.');
    }

    const AndroidNotificationDetails androidNotificationDetails = 
      AndroidNotificationDetails('channel id', 'channel name',
        channelDescription: 'channel Descriptions',
        importance: Importance.max,
        priority: Priority.max,
        showWhen: false,
      );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: DarwinNotificationDetails(badgeNumber: 1));
    
    await flutterLocalNotificationsPlugin.show(
      0, 'test title', 'test body', notificationDetails);
  }
}