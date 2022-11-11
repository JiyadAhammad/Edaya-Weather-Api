import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/weatherreport/weather_report_bloc.dart';
import '../../../domain/weather/model/weather_repot_hourly/weather_repot_hourly.dart';
import '../../constant/color/colors.dart';
import '../../constant/sizedbox/sizedbox.dart';

class WeatheDetailcardWidget extends StatelessWidget {
  const WeatheDetailcardWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
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
          final WeatherResult data = state.weather[0];
          return SizedBox(
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('asset/image/images.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  // color: Colors.primaries[index][300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  color: ktransparent,
                  elevation: 2,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: <Widget>[
                          kheight20,
                          Text(
                            'feelsLike',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontSize: 18,
                            ),
                          ),
                          kheight,
                          Text(
                            '${data.feelsLike}',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          kheight20,
                          Text(
                            'UVI',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontSize: 18,
                            ),
                          ),
                          kheight,
                          Text(
                            '${data.uvi}',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          kheight20,
                          Text(
                            'Visibility',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontSize: 18,
                            ),
                          ),
                          kheight,
                          Text(
                            '${data.visibility}',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          kheight20,
                          Text(
                            'pressure',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontSize: 18,
                            ),
                          ),
                          kheight,
                          Text(
                            '${data.pressure}',
                            style: GoogleFonts.poppins(
                              color: kwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
