import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utiles/styles.dart';

class AuthOption extends StatelessWidget {
  const AuthOption({super.key,  this.image, required this.title,});
  final String? image, title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Material(
        borderRadius: BorderRadius.circular(6),
        elevation: 1.5,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: 40.h,
          child: ListTile(
            onTap: () {},
            leading:  Container(
              padding: EdgeInsets.only(left: 20.w, right: 10.w),
              child: image!=null? Image.asset(
                image!,
              ):const Icon(Icons.phone),
            ),
            title: Text(
              title!,
              style: Styles.textStyle16,
            ),
          ),
        ),
      ),
    );
  }
}
