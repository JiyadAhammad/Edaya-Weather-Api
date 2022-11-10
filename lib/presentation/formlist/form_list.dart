import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        action: () {},
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
                        // Get.offAll(
                        //   () => const HomeScreen(),
                        // );
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
                        // okButtonClicked();
                        // controller.update();
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
}
