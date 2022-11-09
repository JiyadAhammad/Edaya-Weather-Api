import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../constant/color/colors.dart';
import '../constant/sizedbox/sizedbox.dart';
import '../home/home_screen.dart';
import '../onboarding/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () => Get.offAll(
        () => WithBuilder(),
      ),
    );
    return Scaffold(
      body: Container(
        decoration: backgrounColor(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.h,
                    ),
                    kheight,
                    SizedBox(
                      child: Image.asset('asset/image/cloud.png'),
                    ),
                    kheight20,
                  ],
                ),
              ),
              LoadingAnimationWidget.staggeredDotsWave(
                color: kwhite,
                size: 70.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration backgrounColor() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: <Color>[
        Color(0xFF955cd1),
        Color(0xFF3fa2fa),
      ],
      stops: <double>[
        0.2,
        0.85,
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    ),
  );
}
