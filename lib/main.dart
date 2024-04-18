import 'package:chatty_app/core/utiles/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utiles/router.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const ChattyApp());
}

class ChattyApp extends StatelessWidget {
  const ChattyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!=============================');
    } else {
      print('User is signed in!========================');
    }
  });
    return  SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(360, 780),
        builder: (context, child) =>  MaterialApp.router(
          theme: ThemeData(
            scaffoldBackgroundColor: kPrimaryColor
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: RouterApp.router,
        ),
      ),
    );
  }
}