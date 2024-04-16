import 'package:chatty_app/core/utiles/constants.dart';
import 'package:chatty_app/features/splash/pressentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSplashViewColor,
       body: SplashViewBody()
      );
  }
}