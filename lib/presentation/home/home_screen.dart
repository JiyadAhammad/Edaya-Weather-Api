import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/color/colors.dart';
import '../constant/sizedbox/sizedbox.dart';
import 'widget/main_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              MainDeatilContinerWidget(
                height: height,
                width: width,
              ),
              kheight,
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Weather Deatils',
                      style: GoogleFonts.poppins(
                        color: kwhite,
                        fontSize: 30,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        WeatherDetailsWidget(
                          content: 'Feels like',
                          value: '15°',
                        ),
                        WeatherDetailsWidget(
                          content: 'Humidity',
                          value: '67 %',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        WeatherDetailsWidget(
                          content: 'uvi',
                          value: '15°',
                        ),
                        WeatherDetailsWidget(
                          content: 'wind_deg',
                          value: '67 %',
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        WeatherDetailsWidget(
                          content: 'visibility',
                          value: '15°',
                        ),
                        WeatherDetailsWidget(
                          content: 'pressure',
                          value: '67 %',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherDetailsWidget extends StatelessWidget {
  const WeatherDetailsWidget({
    super.key,
    required this.content,
    required this.value,
  });

  final String content;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        kheight20,
        Text(
          content,
          style: GoogleFonts.poppins(
            color: kwhite,
            fontSize: 18,
          ),
        ),
        kheight,
        Text(
          value,
          style: GoogleFonts.poppins(
            color: kwhite,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
