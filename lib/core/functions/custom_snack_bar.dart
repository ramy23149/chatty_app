import 'package:flutter/material.dart';

import '../utiles/styles.dart';

void snackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black,
      content: Text(text,style: Styles.textStyle18.copyWith(color: Colors.white),),
    ),
  );
}
