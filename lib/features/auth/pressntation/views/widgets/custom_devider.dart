import 'package:chatty_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class CustomDivder extends StatelessWidget {
  const CustomDivder({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
  padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child:  Divider(
          color: Colors.grey.shade300,
          thickness: 1.5,
        ),
      ),
      const Text(
        '  or  ',
        style: Styles.textStyle16
      ),
      Expanded(
        child: Divider(
          color: Colors.grey.shade300,
          thickness: 1.5,
        ),
      ),
    ],
  ),
);
  }
}