import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../constant/color/colors.dart';
import '../../constant/sizedbox/sizedbox.dart';
import 'expanded_container.dart';

class MainDeatilContinerWidget extends StatelessWidget {
  const MainDeatilContinerWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.5,
      width: width,
      // padding: const EdgeInsets.only(top: 30),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
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
      ),
      child: Column(
        children: <Widget>[
          Text(
            'City Name',
            style: GoogleFonts.poppins(
              color: kwhite,
              fontSize: 30,
            ),
          ),
          kheight5,
          Text(
            DateFormat.MMMMd().format(
              DateTime.now(),
            ),
            style: GoogleFonts.montserrat(
              color: kwhite,
              fontSize: 14,
            ),
          ),
          kheight5,
          Text(
            DateFormat.jm().format(
              DateTime.now(),
            ),
            style: GoogleFonts.montserrat(
              color: kwhite,
              fontSize: 14,
            ),
          ),
          Image.asset(
            'asset/image/icons8-sun-48.png',
            width: 100,
          ),
          Text(
            'Sunny',
            style: GoogleFonts.poppins(
              color: kwhite,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            '15°',
            style: GoogleFonts.poppins(
              color: kwhite,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Row(
            children: <Widget>[
              ExpandedImageContainer(
                width: width,
                image: 'asset/image/icons8-wind-48.png',
                data: '19.1 kmpl',
                source: 'wind',
              ),
              ExpandedImageContainer(
                width: width,
                image: 'asset/image/icons8-snow-48.png',
                data: '81',
                source: 'humidity',
              ),
              ExpandedImageContainer(
                width: width,
                image: 'asset/image/icons8-windsock-48.png',
                data: '91',
                source: 'wind dir',
              ),
            ],
          )
        ],
      ),
    );
  }
}
