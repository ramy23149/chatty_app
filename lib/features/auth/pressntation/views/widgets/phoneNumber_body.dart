import 'package:chatty_app/core/widgets/custom_text_Fiald.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPhoneNumberBody extends StatelessWidget {
  const AuthPhoneNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(
            'assets/images/phone-number-png-28.png',
            height: 150.h,
            width: 150.w,
          ),
           MyInputTextField(
            hint: 'Phone Number',
          )
        ],
      ),
    );
  }
}
