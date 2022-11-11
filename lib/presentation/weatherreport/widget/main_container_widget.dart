import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../application/weatherreport/weather_report_bloc.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<WeatherReportBloc>(context).add(
        const WeatherReportEvent.getWeatherDetails(),
      );
    });
    return BlocBuilder<WeatherReportBloc, WeatherReportState>(
      builder: (BuildContext context, WeatherReportState state) {
        if (state.isLoading) {
          return const Center(
            child: CupertinoActivityIndicator(
              color: kwhite,
            ),
          );
        } else if (state.isError) {
          return const Center(child: Text('Something  Went Wrong'));
        } else if (state.weather.isEmpty) {
          return const Center(child: Text('No data'));
        } else {
          final data = state.weather[0];
          return Container(
            height: 400,
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
                  'Ernakulam',
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
                  '${data.weather![0].main}',
                  style: GoogleFonts.poppins(
                    color: kwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '${data.temp}°',
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
                      data: '${data.windSpeed} kmpl',
                      source: 'wind',
                    ),
                    ExpandedImageContainer(
                      width: width,
                      image: 'asset/image/icons8-snow-48.png',
                      data: '${data.humidity}',
                      source: 'humidity',
                    ),
                    ExpandedImageContainer(
                      width: width,
                      image: 'asset/image/icons8-windsock-48.png',
                      data: '${data.windGust}',
                      source: 'wind dir',
                    ),
                  ],
                ),
                
              ],
            ),
          );
        }
      },
    );
  }
}
