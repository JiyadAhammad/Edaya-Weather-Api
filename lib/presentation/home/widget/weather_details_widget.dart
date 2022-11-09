import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/color/colors.dart';
import '../../constant/sizedbox/sizedbox.dart';

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
