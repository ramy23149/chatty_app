import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: kPrimaryColor,
      body: AuthViewBody(),
    );
  }
}