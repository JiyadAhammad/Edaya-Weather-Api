// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherDetails value) getWeatherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeatherDetails value)? getWeatherDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherDetails value)? getWeatherDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherReportEventCopyWith<$Res> {
  factory $WeatherReportEventCopyWith(
          WeatherReportEvent value, $Res Function(WeatherReportEvent) then) =
      _$WeatherReportEventCopyWithImpl<$Res, WeatherReportEvent>;
}

/// @nodoc
class _$WeatherReportEventCopyWithImpl<$Res, $Val extends WeatherReportEvent>
    implements $WeatherReportEventCopyWith<$Res> {
  _$WeatherReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherDetailsCopyWith<$Res> {
  factory _$$GetWeatherDetailsCopyWith(
          _$GetWeatherDetails value, $Res Function(_$GetWeatherDetails) then) =
      __$$GetWeatherDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherDetailsCopyWithImpl<$Res>
    extends _$WeatherReportEventCopyWithImpl<$Res, _$GetWeatherDetails>
    implements _$$GetWeatherDetailsCopyWith<$Res> {
  __$$GetWeatherDetailsCopyWithImpl(
      _$GetWeatherDetails _value, $Res Function(_$GetWeatherDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherDetails implements GetWeatherDetails {
  const _$GetWeatherDetails();

  @override
  String toString() {
    return 'WeatherReportEvent.getWeatherDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherDetails,
  }) {
    return getWeatherDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherDetails,
  }) {
    return getWeatherDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherDetails,
    required TResult orElse(),
  }) {
    if (getWeatherDetails != null) {
      return getWeatherDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherDetails value) getWeatherDetails,
  }) {
    return getWeatherDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeatherDetails value)? getWeatherDetails,
  }) {
    return getWeatherDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherDetails value)? getWeatherDetails,
    required TResult orElse(),
  }) {
    if (getWeatherDetails != null) {
      return getWeatherDetails(this);
    }
    return orElse();
  }
}

abstract class GetWeatherDetails implements WeatherReportEvent {
  const factory GetWeatherDetails() = _$GetWeatherDetails;
}

/// @nodoc
mixin _$WeatherReportState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<WeatherResult> get weather => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherReportStateCopyWith<WeatherReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherReportStateCopyWith<$Res> {
  factory $WeatherReportStateCopyWith(
          WeatherReportState value, $Res Function(WeatherReportState) then) =
      _$WeatherReportStateCopyWithImpl<$Res, WeatherReportState>;
  @useResult
  $Res call({bool isLoading, List<WeatherResult> weather, bool isError});
}

/// @nodoc
class _$WeatherReportStateCopyWithImpl<$Res, $Val extends WeatherReportState>
    implements $WeatherReportStateCopyWith<$Res> {
  _$WeatherReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weather = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResult>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $WeatherReportStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<WeatherResult> weather, bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WeatherReportStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weather = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResult>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required final List<WeatherResult> weather,
      required this.isError})
      : _weather = weather;

  @override
  final bool isLoading;
  final List<WeatherResult> _weather;
  @override
  List<WeatherResult> get weather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'WeatherReportState(isLoading: $isLoading, weather: $weather, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_weather), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements WeatherReportState {
  const factory _Initial(
      {required final bool isLoading,
      required final List<WeatherResult> weather,
      required final bool isError}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  List<WeatherResult> get weather;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
