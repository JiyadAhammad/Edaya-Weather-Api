

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/weather/i_weather_repo.dart';
import '../../domain/weather/model/weather_repot_hourly/weather_repot_hourly.dart';

part 'weather_report_event.dart';
part 'weather_report_state.dart';
part 'weather_report_bloc.freezed.dart';

@injectable
class WeatherReportBloc extends Bloc<WeatherReportEvent, WeatherReportState> {
  WeatherReportBloc(this.iweatherRepo) : super(WeatherReportState.initial()) {
    on<GetWeatherDetails>(
      (
        WeatherReportEvent event,
        Emitter<WeatherReportState> emit,
      ) async {
        emit(
          const WeatherReportState(
            weather: <WeatherResult>[],
            isLoading: true,
            isError: false,
          ),
        );
        final Either<WeatherFailure, List<WeatherResult>> result =
            await iweatherRepo.getWeatherDetails();

        final WeatherReportState newState = result.fold(
          (WeatherFailure failure) {
            return const WeatherReportState(
              weather: <WeatherResult>[],
              isLoading: false,
              isError: true,
            );
          },
          (List<WeatherResult> success) {
            return WeatherReportState(
              weather: success,
              isLoading: false,
              isError: false,
            );
          },
        );
        emit(newState);
      },
    );
  }
  final IWeatherRepo iweatherRepo;
}
