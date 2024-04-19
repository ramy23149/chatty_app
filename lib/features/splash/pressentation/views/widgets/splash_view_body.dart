import 'package:chatty_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utiles/router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chatty .',
        style: Styles.textStyle45,
      ),
    );
  }
    void navigateToHomeView() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      context.go(RouterApp.kAuthView);
    });
  }
}
