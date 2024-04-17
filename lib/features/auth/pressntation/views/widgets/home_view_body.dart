import 'package:chatty_app/core/utiles/styles.dart';
import 'package:chatty_app/core/widgets/Custom_text_bottom.dart';
import 'package:chatty_app/features/auth/pressntation/views/widgets/custom_devider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Auth_option_contaner.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.09,
          ),
          Text(
            'Chatty .',
            style: Styles.textStyle40,
          ),
            SizedBox(
            height: size.height * 0.08,
          ),
        const AuthOption(
            image: 'assets/images/Google_icon.png',
            title: 'Sign in with Google',
           ),
             const AuthOption(
            image: 'assets/images/facebook_facebook logo_icon.png',
            title: 'Sign in with Facebook',
           ),
             const AuthOption(
            image: 'assets/images/apple_logo_icon.png',
            title: 'Sign in with Apple',
           ),
           // a3ml section le dol?!!
        const CustomDivder(),
        const AuthOption(title: 'Sign in with phone number',),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Text('Already have an account?',style: Styles.textStyle16,),
          
         CustomTextButtom(text: 'Sign up here', onPressed: (){})
        ],
      ),
    );
  }
}


