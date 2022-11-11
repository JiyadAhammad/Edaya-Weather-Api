import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.clientFailure() = _ClientFailure;
  const factory WeatherFailure.serverFailure() = _ServerFailure;
}
