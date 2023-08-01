import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationsService {
  static final LocalNotificationsService _localNotificationsService =
      LocalNotificationsService._();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings _androidInitializationSettings =
      const AndroidInitializationSettings('app_icon');

  final DarwinInitializationSettings _initializationSettingsDarwin =
      DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
    onDidReceiveLocalNotification: (id, title, body, payload) {},
  );

  factory LocalNotificationsService() {
    return _localNotificationsService;
  }

  LocalNotificationsService._() {
    init();
  }

  void init() async {
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: _androidInitializationSettings,
      iOS: _initializationSettingsDarwin,
    );
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {},
    );
  }

  void createNotification({
    required String title,
    String? body,
    int? progress,
    int? maxProgress,
  }) async {
    if (progress != null && maxProgress != null) {
      final androidPlatformChannelSpecifics = AndroidNotificationDetails(
          'progress channel', 'progress channel',
          channelDescription: 'progress channel description',
          channelShowBadge: false,
          importance: Importance.max,
          priority: Priority.high,
          onlyAlertOnce: true,
          showProgress: true,
          maxProgress: maxProgress,
          progress: progress);
      final platformChannelSpecifics = NotificationDetails(
          android: androidPlatformChannelSpecifics,
          iOS: const DarwinNotificationDetails());
      await _flutterLocalNotificationsPlugin.show(
          0, title, body, platformChannelSpecifics);
    } else {
      _flutterLocalNotificationsPlugin.cancel(0);
      const androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'progress done channel',
        'progress done channel',
        channelDescription: 'progress done channel description',
        channelShowBadge: false,
        importance: Importance.max,
        priority: Priority.high,
        onlyAlertOnce: true,
      );
      const platformChannelSpecifics = NotificationDetails(
          android: androidPlatformChannelSpecifics,
          iOS: DarwinNotificationDetails());
      await _flutterLocalNotificationsPlugin.show(
          Random().nextInt(100000), title, body, platformChannelSpecifics);
    }
  }
}
