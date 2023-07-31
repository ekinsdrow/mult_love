// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_series_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarSeriesEvent _$CalendarSeriesEventFromJson(Map<String, dynamic> json) {
  return _CalendarSeriesEvent.fromJson(json);
}

/// @nodoc
mixin _$CalendarSeriesEvent {
  String get imgUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarSeriesEventCopyWith<CalendarSeriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarSeriesEventCopyWith<$Res> {
  factory $CalendarSeriesEventCopyWith(
          CalendarSeriesEvent value, $Res Function(CalendarSeriesEvent) then) =
      _$CalendarSeriesEventCopyWithImpl<$Res, CalendarSeriesEvent>;
  @useResult
  $Res call({String imgUrl, String title, String description, String date});
}

/// @nodoc
class _$CalendarSeriesEventCopyWithImpl<$Res, $Val extends CalendarSeriesEvent>
    implements $CalendarSeriesEventCopyWith<$Res> {
  _$CalendarSeriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgUrl = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarSeriesEventCopyWith<$Res>
    implements $CalendarSeriesEventCopyWith<$Res> {
  factory _$$_CalendarSeriesEventCopyWith(_$_CalendarSeriesEvent value,
          $Res Function(_$_CalendarSeriesEvent) then) =
      __$$_CalendarSeriesEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imgUrl, String title, String description, String date});
}

/// @nodoc
class __$$_CalendarSeriesEventCopyWithImpl<$Res>
    extends _$CalendarSeriesEventCopyWithImpl<$Res, _$_CalendarSeriesEvent>
    implements _$$_CalendarSeriesEventCopyWith<$Res> {
  __$$_CalendarSeriesEventCopyWithImpl(_$_CalendarSeriesEvent _value,
      $Res Function(_$_CalendarSeriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgUrl = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
  }) {
    return _then(_$_CalendarSeriesEvent(
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarSeriesEvent implements _CalendarSeriesEvent {
  _$_CalendarSeriesEvent(
      {required this.imgUrl,
      required this.title,
      required this.description,
      required this.date});

  factory _$_CalendarSeriesEvent.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarSeriesEventFromJson(json);

  @override
  final String imgUrl;
  @override
  final String title;
  @override
  final String description;
  @override
  final String date;

  @override
  String toString() {
    return 'CalendarSeriesEvent(imgUrl: $imgUrl, title: $title, description: $description, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarSeriesEvent &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imgUrl, title, description, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarSeriesEventCopyWith<_$_CalendarSeriesEvent> get copyWith =>
      __$$_CalendarSeriesEventCopyWithImpl<_$_CalendarSeriesEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarSeriesEventToJson(
      this,
    );
  }
}

abstract class _CalendarSeriesEvent implements CalendarSeriesEvent {
  factory _CalendarSeriesEvent(
      {required final String imgUrl,
      required final String title,
      required final String description,
      required final String date}) = _$_CalendarSeriesEvent;

  factory _CalendarSeriesEvent.fromJson(Map<String, dynamic> json) =
      _$_CalendarSeriesEvent.fromJson;

  @override
  String get imgUrl;
  @override
  String get title;
  @override
  String get description;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarSeriesEventCopyWith<_$_CalendarSeriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
