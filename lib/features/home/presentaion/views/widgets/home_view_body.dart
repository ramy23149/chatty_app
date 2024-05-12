
import 'package:chatty_app/features/home/presentaion/views/widgets/navigation_contaner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../paymob_manager/paymob_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const NaviegatContaner(),
        const Spacer(),
        MaterialButton(
            color: Colors.blue,
            onPressed: ()async=>{
              pay()
            },
            child: const Text('pay 10 EGP'))
      ],
    );
  }

  Future<void> pay() async {
    PaymentMob().makePayment(10).then((String paymnentKey) {
      launchUrl(
        Uri.parse(
          "https://accept.paymob.com/api/acceptance/iframes/832755?payment_token=$paymnentKey",
        ),
      );
    });
  }
}
