import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../constant/color/colors.dart';
import '../constant/sizedbox/sizedbox.dart';
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
              NextDayWeatherWidget(height: height, width: width)
            ],
          ),
        ),
      ),
    );
  }
}

class NextDayWeatherWidget extends StatelessWidget {
  const NextDayWeatherWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: height * 0.46,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue[300],
            ),
            child: Lottie.asset(
              'asset/lottie/102873-clouds-loop (2).json',
              alignment: Alignment.topCenter,
              width: 1,
              height: 1,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const MainHeadWidget(
                head: 'Next Days',
                color: kblack,
                size: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: SizedBox(
                  height: height / 2.5,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        thickness: 2,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('saturday'),
                          Image.asset('asset/image/icons8-sun-48.png'),
                          Text('31 °C'),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length)][400],
              ),
              child: Card(
                elevation: 0,
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/images.jpeg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.primaries[index][300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                color: ktransparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
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
