import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../application/weatherreport/weather_report_bloc.dart';
import '../../constant/color/colors.dart';
import '../../constant/sizedbox/sizedbox.dart';

class TodayWeatherWidget extends StatelessWidget {
  const TodayWeatherWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final DateTime a = DateTime.now();
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
          return SizedBox(
            height: width * .45,
            width: double.infinity,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                final data = state.weather[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)][400],
                    ),
                    child: Card(
                      elevation: 0,
                      color: ktransparent,
                      child: Column(
                        children: <Widget>[
                          kheight20,
                          Text(
                            DateFormat.jm().format(
                              a,
                            ),
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontSize: 18,
                            ),
                          ),
                          Image.asset('asset/image/icons8-rainbow-48.png'),
                          kheight,
                          Text(
                            '${data.temp} °C',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
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
      },
    );
  }
}
