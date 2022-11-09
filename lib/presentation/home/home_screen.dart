import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../constant/color/colors.dart';
import '../constant/sizedbox/sizedbox.dart';
import '../splash/splash_screen.dart';
import 'widget/main_container_widget.dart';
import 'widget/weather_details_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
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
            ],
          ),
        ),
      ),
    );
  }
}

class TodayWeatherWidget extends StatelessWidget {
  const TodayWeatherWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * .45,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 100,
              width: 100,
              decoration: backgrounColor(),
              child: Card(
                color: ktransparent,
                child: Column(
                  children: <Widget>[
                    kheight20,
                    Text(
                      DateFormat.jm().format(
                        DateTime.now(),
                      ),
                      style: GoogleFonts.poppins(
                        color: kwhite,
                        fontSize: 18,
                      ),
                    ),
                    Image.asset('asset/image/icons8-rainbow-48.png'),
                    kheight,
                    Text(
                      '31 °C',
                      style: GoogleFonts.poppins(
                        color: kwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class WeatheDetailcardWidget extends StatelessWidget {
  const WeatheDetailcardWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * .4,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 100,
              width: 100,
              decoration: backgrounColor(),
              child: const Card(
                color: ktransparent,
                child: WeatherDetailsWidget(
                  content: 'khdfjl',
                  value: 'dfsksjl',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MainHeadWidget extends StatelessWidget {
  const MainHeadWidget({
    super.key,
    required this.head,
  });

  final String head;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        head,
        style: GoogleFonts.poppins(
          color: kwhite,
          fontSize: 30,
        ),
      ),
    );
  }
}
