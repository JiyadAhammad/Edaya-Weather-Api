import 'package:flutter/material.dart';

import '../../constant/color/colors.dart';

class TextFormFeildWidget extends StatelessWidget {
  const TextFormFeildWidget({
    super.key,
    required this.userInput,
    required this.visible,
    required this.prefixIcon,
    required this.hintText,
    required this.validator,
  });

  final TextEditingController userInput;
  final bool visible;
  final IconData prefixIcon;
  final String hintText;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        controller: userInput,
        obscureText: visible,
        validator: validator,
        style: const TextStyle(
          fontSize: 20,
          color: kblackText,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          focusColor: Colors.white,
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              width: 3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.grey,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: 'verdana_regular',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
