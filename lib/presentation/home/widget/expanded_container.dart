import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/color/colors.dart';
import '../../constant/sizedbox/sizedbox.dart';

class ExpandedImageContainer extends StatelessWidget {
  const ExpandedImageContainer({
    super.key,
    required this.width,
    required this.image,
    required this.source,
    required this.data,
  });

  final double width;
  final String image;
  final String source;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            width: width * .15,
            height: width * .15,
            decoration: BoxDecoration(
              color: kwhite54,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              image,
              width: width * .1,
            ),
          ),
          kheight5,
          Text(
            data,
            style: GoogleFonts.montserrat(
              color: kwhite,
              fontSize: 14,
            ),
          ),
          kheight5,
          Text(
            source,
            style: GoogleFonts.montserrat(
              color: kwhite,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
