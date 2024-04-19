import 'package:chatty_app/core/utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NaviegatContaner extends StatefulWidget {
  const NaviegatContaner({super.key});

  @override
  State<NaviegatContaner> createState() => _NaviegatContanerState();
}

class _NaviegatContanerState extends State<NaviegatContaner> {
  bool isChat = true;
  bool isCall = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width / 60),
      padding: EdgeInsets.symmetric(horizontal: width / 70),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 0,
                height: 55,
                color: isChat ? Colors.white : Colors.grey.shade200,
                onPressed: () {
                  isChat = true;
                  isCall = false;
                  setState(() {});
                },
                child: const Text(
                  'Chat',
                  style: Styles.textStyle20,
                )),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 0,
                height: 55,
                color: isCall == false ? Colors.grey.shade200 : Colors.white,
                onPressed: () {
                  isChat = false;
                  isCall = true;
                  setState(() {});
                },
                child: const Text(
                  'Call',
                  style: Styles.textStyle20,
                )),
          )
        ],
      ),
    );
  }
}
