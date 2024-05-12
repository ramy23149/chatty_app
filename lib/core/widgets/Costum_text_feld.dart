import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onSaved,
    this.controller,
    required this.hint,
    this.obscureText, this.hintColor,
  });
  final TextEditingController? controller;
  final void Function(String?)? onSaved;
  final String hint;
  
  final bool? obscureText;
  final Color? hintColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        onSaved: onSaved,
        validator: (value) {
          if (value == '') {
            return 'can\'t be empty';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          
            hintText: hint,
            hintStyle:
                 TextStyle(color: hintColor??Colors.black, fontWeight: FontWeight.bold),
            enabledBorder: const UnderlineInputBorder(),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black))));
  }
}
