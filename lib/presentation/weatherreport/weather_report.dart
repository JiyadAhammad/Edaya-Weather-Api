import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/weatherreport/weather_report_bloc.dart';
import '../../domain/weather/model/weather_repot_hourly/weather_repot_hourly.dart';
import '../constant/color/colors.dart';
import '../constant/sizedbox/sizedbox.dart';
import '../login/login_screen.dart';
import '../widget/custom_app_bar.dart';
import 'widget/main_container_widget.dart';
import 'widget/nextday_weather.dart';
import 'widget/today_weather.dart';
import 'widget/weather_details_widget.dart';
import 'widget/weather_sample_detail_card.dart';

class WeatherReport extends StatelessWidget {
  const WeatherReport({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: 'WeatherReport',
        action: () {
          Get.defaultDialog(
            title: 'Alert!!',
            titleStyle: const TextStyle(
              fontSize: 25,
              color: kred,
            ),
            middleText: 'Do you want toExit',
            middleTextStyle: const TextStyle(
              fontSize: 20,
              color: kwhite,
            ),
            backgroundColor: kblack,
            textConfirm: 'Ok',
            confirmTextColor: kblack,
            onConfirm: () async {
              final SharedPreferences sharedpreferen =
                  await SharedPreferences.getInstance();
              await sharedpreferen.clear();
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute<LoginScreen>(
                    builder: (BuildContext ctx) => LoginScreen(),
                  ),
                  (Route<dynamic> route) => false);
              Get.snackbar(
                'title',
                'message',
                titleText: const Center(
                  child: Text(
                    'Success',
                    style: TextStyle(
                      fontSize: 20,
                      color: kred,
                    ),
                  ),
                ),
                messageText: const Center(
                  child: Text(
                    'Sign Out Successfully',
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
            },
            buttonColor: kwhite,
            textCancel: 'Cancel',
            cancelTextColor: kwhite,
            onCancel: () {
              Get.back();
            },
            barrierDismissible: false,
          );
        },
        icon: Icons.exit_to_app,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MainDeatilContinerWidget(
                height: height,
                width: width,
              ),
              kheight,
              const MainHeadWidget(head: 'Weather Deatils'),
              kheight5,
              WeatheDetailcardWidget(width: width),
              kheight,
              const MainHeadWidget(head: 'Today'),
              kheight5,
              TodayWeatherWidget(width: width),
              NextDayWeatherWidget(height: height, width: width)
            ],
          ),
        ),
      ),
    );
  }
}

class MainHeadWidget extends StatelessWidget {
  const MainHeadWidget({
    super.key,
    required this.head,
    this.color = kwhite,
    this.size = 30,
  });

  final String head;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        head,
        style: GoogleFonts.poppins(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }
}
