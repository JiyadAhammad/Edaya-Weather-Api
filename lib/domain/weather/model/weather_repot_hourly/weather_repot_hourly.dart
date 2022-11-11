import 'package:json_annotation/json_annotation.dart';

import 'weather.dart';

part 'weather_repot_hourly.g.dart';

@JsonSerializable()
class WeatherRepotHourly {
  List<WeatherResult>? hourly;

  WeatherRepotHourly({this.hourly});

  factory WeatherRepotHourly.fromJson(Map<String, dynamic> json) {
    return _$WeatherRepotHourlyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeatherRepotHourlyToJson(this);
}

@JsonSerializable()
class WeatherResult {
  int? dt;
  double? temp;
  @JsonKey(name: 'feels_like')
  double? feelsLike;
  double? pressure;
  double? humidity;
  @JsonKey(name: 'dew_point')
  double? dewPoint;
  double? uvi;
  double? clouds;
  double? visibility;
  @JsonKey(name: 'wind_speed')
  double? windSpeed;
  @JsonKey(name: 'wind_deg')
  int? windDeg;
  @JsonKey(name: 'wind_gust')
  double? windGust;
  List<Weather>? weather;
  double? pop;

  WeatherResult({
    this.dt,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop,
  });

  factory WeatherResult.fromJson(Map<String, dynamic> json) {
    return _$WeatherResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeatherResultToJson(this);
}
