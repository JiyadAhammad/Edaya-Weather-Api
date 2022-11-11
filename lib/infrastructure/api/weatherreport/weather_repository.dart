import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/failures.dart';
import '../../../domain/weather/i_weather_repo.dart';
import '../../../domain/weather/model/weather_repot_hourly/weather_repot_hourly.dart';
import '../api_url.dart';

@LazySingleton(as: IWeatherRepo)
class WeatherReportRepository implements IWeatherRepo {
  @override
  Future<Either<WeatherFailure, List<WeatherResult>>>
      getWeatherDetails() async {
    try {
      final Response<dynamic> response = await Dio(
        BaseOptions(),
      ).get(kBaseUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // log('mess');
        // log('${response.data} api respnse');
        final List<WeatherResult> weatherResult =
            // WeatherRepotHourly.fromJson(
            //     response.data as  Map<String, dynamic>); // final List<WeatherRepotHourly> weatherResult =
            (response.data['hourly'] as List).map((e) {
          return WeatherResult.fromJson(e as Map<String, dynamic>);
        }).toList();
        // log(weatherResult);
        return right(weatherResult);
      } else {
        return left<WeatherFailure, List<WeatherResult>>(
            const WeatherFailure.serverFailure());
      }
    } on DioError catch (a) {
      log('$a catxhing dio error');
      return const Left<WeatherFailure, List<WeatherResult>>(
          WeatherFailure.clientFailure());
    } catch (e) {
      log('$e catch error');
      return const Left<WeatherFailure, List<WeatherResult>>(
          WeatherFailure.clientFailure());
    }
  }
}
