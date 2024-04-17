import 'package:flutter/material.dart';

import '../utiles/styles.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -15),
      child: TextButton(
        
        onPressed: onPressed,
        child: Text(

          text,
          style: Styles.textStyle16.copyWith(color:const Color(0xff98ADE5)),
        ),
      ),
    );
  }
}
