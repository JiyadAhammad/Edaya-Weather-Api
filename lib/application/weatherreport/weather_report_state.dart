part of 'weather_report_bloc.dart';

@freezed
class WeatherReportState with _$WeatherReportState {
  const factory WeatherReportState({
    required bool isLoading,
    required List<WeatherResult> weather,
    required bool isError,
  }) = _Initial;

  factory WeatherReportState.initial() {
    return const WeatherReportState(
      isLoading: false,
      isError: false,
      weather: <WeatherResult>[],
    );
  }
}
