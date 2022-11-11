import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/weatherreport/weather_report_bloc.dart';
import '../../../domain/weather/model/weather_repot_hourly/weather_repot_hourly.dart';
import '../../constant/color/colors.dart';
import '../../constant/sizedbox/sizedbox.dart';

class WeatherDetailsWidget extends StatelessWidget {
  const WeatherDetailsWidget({
    super.key,
    required this.content,
    required this.value,
    required this.index,
  });

  final String content;
  final String value;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherReportBloc, WeatherReportState>(
      builder: (BuildContext context, state) {
        final WeatherResult data = state.weather[0];
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
              '${data.feelsLike}',
              style: GoogleFonts.poppins(
                color: kwhite,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        );
      },
    );
  }
}
// return SizedBox(
//           height: 100,
//           width: double.infinity,
//           child: Card(
//             color: ktransparent,
//             elevation: 2,
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(10),
//               ),
//             ),
//             child: Column(
//               children: <Widget>[
//                 kheight20,
//                 Text(
//                   'feelsLike',
//                   style: GoogleFonts.poppins(
//                     color: kwhite,
//                     fontSize: 18,
//                   ),
//                 ),
//                 kheight,
//                 Text(
//                   '${data.feelsLike}',
//                   style: GoogleFonts.poppins(
//                     color: kwhite,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 22,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );