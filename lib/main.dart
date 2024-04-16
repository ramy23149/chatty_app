import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utiles/router.dart';

void main() {
  runApp(const ChattyApp());
}

class ChattyApp extends StatelessWidget {
  const ChattyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(360, 780),
        builder: (context, child) =>  MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: RouterApp.router,
        ),
      ),
    );
  }
}