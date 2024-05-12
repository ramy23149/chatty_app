import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingApi {
  final _firebasemassaging = FirebaseMessaging.instance;
  Future<void> initNotifications() async {
    await _firebasemassaging.requestPermission();
    final token = await _firebasemassaging.getToken();
    print(token);
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
  }
}

Future<void> _backgroundHandler(RemoteMessage message) async {
  print('title: ${message.notification!.title}');
  print('body: ${message.notification!.body}');
}