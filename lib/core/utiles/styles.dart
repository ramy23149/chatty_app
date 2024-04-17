import 'package:chatty_app/core/utiles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static const textStyle18 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18);

  static const textStyle20 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
   static final textStyle40 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 40.sp,
  //  fontFamily: kFontFamily
  );
  static final textStyle45 = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 45.sp, fontFamily: kFontFamily,color: Colors.white
      );

  static const textStyle14 =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 14);

  static const textStyle16 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color(0xff7D7C82));
}
