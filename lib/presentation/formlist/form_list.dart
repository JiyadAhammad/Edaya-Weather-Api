import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/user/user.dart';
import '../../main.dart';
import '../constant/color/colors.dart';
import '../constant/sizedbox/sizedbox.dart';
import '../home/home_screen.dart';
import '../widget/custom_app_bar.dart';
import 'widget/text_form_widget.dart';

class Formwidget extends StatelessWidget {
  Formwidget({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: CustomAppBar(
        title: 'Add Details',
        icon: Icons.clear_outlined, // clear all Field
        action: () {
          nameController.clear();
          secondController.clear();
          emailController.clear();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              kheight20,
              TextFormWidget(
                hintText: 'Enter First Name',
                prefixIcon: Icons.person,
                controller: nameController,
              ),
              kheight,
              TextFormWidget(
                prefixIcon: Icons.numbers,
                hintText: 'Enter Second Name',
                controller: secondController,
              ),
              kheight,
              TextFormWidget(
                prefixIcon: Icons.email,
                hintText: 'Enter Email',
                controller: emailController,
              ),
              kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blueGrey,
                        ),
                      ),
                      onPressed: () {
                        Get.to(
                          () => const HomeScreen(),
                          transition: Transition.fade,
                          duration: const Duration(
                            milliseconds: 1500,
                          ),
                        );
                      },
                      child: const Text(
                        'Cancel',
                      ),
                    ),
                  ),
                  kwidth20,
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          kblack,
                        ),
                      ),
                      onPressed: () {
                        okButtonClicked();
                      },
                      child: const Text(
                        'ok',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> okButtonClicked() async {
    final String fName = nameController.text.trim();
    final String sName = secondController.text.trim();
    final String email = emailController.text.trim();
    if (fName.isEmpty || sName.isEmpty || email.isEmpty) {
      Get.snackbar(
        'Warning',
        'All Field are Required',
        titleText: const Center(
          child: Text(
            'Warning',
            style: TextStyle(
              fontSize: 20,
              color: kred,
            ),
          ),
        ),
        messageText: const Center(
          child: Text(
            'All Field are Required',
            style: TextStyle(
              fontSize: 18,
              color: kwhite,
            ),
          ),
        ),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: kblack,
        colorText: kwhite,
        maxWidth: 250,
        margin: const EdgeInsets.only(bottom: 15),
      );
    } else {
      final UserModel userDetails = UserModel(
        firstName: fName,
        secondName: sName,
        email: email,
      );
      Get.offAll(() => const HomeScreen());
      Get.snackbar(
        'title',
        'message',
        titleText: const Center(
          child: Text(
            'Success',
            style: TextStyle(
              fontSize: 20,
              color: kgreen,
            ),
          ),
        ),
        messageText: const Center(
          child: Text(
            'Successfully Added',
            style: TextStyle(
              fontSize: 18,
              color: kwhite,
            ),
          ),
        ),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: kblack,
        colorText: kwhite,
        maxWidth: 250,
        margin: const EdgeInsets.only(bottom: 15),
      );
      nameController.clear();
      secondController.clear();
      emailController.clear();

      final int id = await userDb.add(userDetails);
      final UserModel userModel = UserModel(
        id: id,
        firstName: userDetails.firstName,
        secondName: userDetails.secondName,
        email: userDetails.email,
      );
      await userDb.put(id, userModel);
    }
  }
}
