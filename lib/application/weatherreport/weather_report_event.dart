part of 'weather_report_bloc.dart';

@freezed
class WeatherReportEvent with _$WeatherReportEvent {
  const factory WeatherReportEvent.getWeatherDetails() = GetWeatherDetails;
}
