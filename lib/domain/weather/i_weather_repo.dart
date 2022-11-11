import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import 'model/weather_repot_hourly/weather_repot_hourly.dart';

abstract class IWeatherRepo {
  Future<Either<WeatherFailure, List<WeatherResult>>> getWeatherDetails();
}
