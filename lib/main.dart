import 'package:chatty_app/core/utiles/constants.dart';
import 'package:chatty_app/features/home/data/massaging_api.dart';
import 'package:chatty_app/features/home/presentaion/views/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessagingApi().initNotifications();

  runApp(const ChattyApp());
}

class ChattyApp extends StatelessWidget {
  const ChattyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: kPrimaryColor),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
