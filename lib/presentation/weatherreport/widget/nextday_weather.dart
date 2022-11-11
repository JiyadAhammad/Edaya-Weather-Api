import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../application/weatherreport/weather_report_bloc.dart';
import '../../constant/color/colors.dart';
import '../../constant/sizedbox/sizedbox.dart';
import '../weather_report.dart';

class NextDayWeatherWidget extends StatelessWidget {
  const NextDayWeatherWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherReportBloc, WeatherReportState>(
      builder: (BuildContext context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 400,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue[300],
                ),
                child: Lottie.asset(
                  'asset/lottie/102873-clouds-loop (2).json',
                  alignment: Alignment.topCenter,
                  width: 1,
                  height: 1,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  kheight,
                  const MainHeadWidget(
                    head: 'Next Days',
                    color: kblack,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: SizedBox(
                      height: height / 2.5,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            thickness: 2,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text('saturday'),
                              Image.asset('asset/image/icons8-sun-48.png'),
                              const Text('31 °C'),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
