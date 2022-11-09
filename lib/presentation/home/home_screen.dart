import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              SizedBox(
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
              ),
              kheight,
              const MainHeadWidget(head: 'Today'),
              kheight5,
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
