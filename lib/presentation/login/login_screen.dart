import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color/colors.dart';
import '../constant/sizedbox/sizedbox.dart';
import '../home/home_screen.dart';
import 'widget/text_form_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    super.key,
  });
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwrodController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Form(
        key: formKey,
        child: ListView(
          padding:const EdgeInsets.symmetric(
            vertical: 100,
          ),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('asset/image/login.png'),
              ],
            ),
            kheight50,
            Column(
              children: <Widget>[
                TextFormFeildWidget(
                  userInput: emailController,
                  visible: false,
                  prefixIcon: Icons.email,
                  hintText: 'Enter Email',
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your Email';
                    }
                    if (value != 'testapp@google.com') {
                      return 'please Enter Valid Email';
                    }
                    return null;
                  },
                ),
                TextFormFeildWidget(
                  userInput: passwrodController,
                  visible: true,
                  prefixIcon: Icons.vpn_key,
                  hintText: 'Enter Pasword',
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your Password';
                    }
                    if (value != 'Test@123456') {
                      return 'please Enter valid Password';
                    }
                    return null;
                  },
                ),
                kheight20,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kblack,
                    minimumSize: Size(
                      MediaQuery.of(context).size.width / 1.5,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    login(
                      emailController.text,
                      passwrodController.text,
                    );
                  },
                  child: const Text(
                    'Log In',
                    style:  TextStyle(
                      color: kwhiteText,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> login(
    String email,
    String password,
  ) async {
    const String userEmail = 'testapp@google.com';
    const String userPassword = 'Test@123456';
    if (formKey.currentState!.validate()) {
      if (email == userEmail && password == userPassword) {
        await Get.offAll(
          () => const HomeScreen(),
        );
      }
    }
  }
}
