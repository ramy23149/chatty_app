import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/phoneNumber_body.dart';

class PhoneNumberAuth extends StatelessWidget {
  const PhoneNumberAuth({super.key});

  @override
  Widget build(BuildContext context) {
return  const Scaffold(
  body: AuthPhoneNumberBody(),
);
 }
}