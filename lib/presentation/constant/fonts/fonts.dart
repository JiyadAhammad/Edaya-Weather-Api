import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/colors.dart';

class GoogleFont {
  static final TextStyle style = GoogleFonts.montserrat(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: kwhiteText,
  );

  static final TextStyle otpSubheaadTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kblackText,
  );
  static final TextStyle otpTimeTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: kblackText,
  );

  static final TextStyle otpExpireTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kblackText,
  );

  static final TextStyle headTextStyleMont = GoogleFonts.montserrat(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle headTextStyle = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle otpTextStyle = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle subHeadTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kblackText,
  );
  static final TextStyle miniHeadTextStyle = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: kblackText,
  );
  static final TextStyle forgotpasswordTextStyle = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle textButtonStyle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: appMainColor,
    decoration: TextDecoration.underline,
  );
}
