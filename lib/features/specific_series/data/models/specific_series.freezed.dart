// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'specific_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecificSeries _$SpecificSeriesFromJson(Map<String, dynamic> json) {
  return _SpecificSeries.fromJson(json);
}

/// @nodoc
mixin _$SpecificSeries {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get videoLink => throw _privateConstructorUsedError;
  List<Voice> get voices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecificSeriesCopyWith<SpecificSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificSeriesCopyWith<$Res> {
  factory $SpecificSeriesCopyWith(
          SpecificSeries value, $Res Function(SpecificSeries) then) =
      _$SpecificSeriesCopyWithImpl<$Res>;
  $Res call(
      {String title, String description, String videoLink, List<Voice> voices});
}

/// @nodoc
class _$SpecificSeriesCopyWithImpl<$Res>
    implements $SpecificSeriesCopyWith<$Res> {
  _$SpecificSeriesCopyWithImpl(this._value, this._then);

  final SpecificSeries _value;
  // ignore: unused_field
  final $Res Function(SpecificSeries) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? videoLink = freezed,
    Object? voices = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      voices: voices == freezed
          ? _value.voices
          : voices // ignore: cast_nullable_to_non_nullable
              as List<Voice>,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecificSeriesCopyWith<$Res>
    implements $SpecificSeriesCopyWith<$Res> {
  factory _$$_SpecificSeriesCopyWith(
          _$_SpecificSeries value, $Res Function(_$_SpecificSeries) then) =
      __$$_SpecificSeriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String description, String videoLink, List<Voice> voices});
}

/// @nodoc
class __$$_SpecificSeriesCopyWithImpl<$Res>
    extends _$SpecificSeriesCopyWithImpl<$Res>
    implements _$$_SpecificSeriesCopyWith<$Res> {
  __$$_SpecificSeriesCopyWithImpl(
      _$_SpecificSeries _value, $Res Function(_$_SpecificSeries) _then)
      : super(_value, (v) => _then(v as _$_SpecificSeries));

  @override
  _$_SpecificSeries get _value => super._value as _$_SpecificSeries;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? videoLink = freezed,
    Object? voices = freezed,
  }) {
    return _then(_$_SpecificSeries(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: videoLink == freezed
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      voices: voices == freezed
          ? _value._voices
          : voices // ignore: cast_nullable_to_non_nullable
              as List<Voice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecificSeries implements _SpecificSeries {
  _$_SpecificSeries(
      {required this.title,
      required this.description,
      required this.videoLink,
      required final List<Voice> voices})
      : _voices = voices;

  factory _$_SpecificSeries.fromJson(Map<String, dynamic> json) =>
      _$$_SpecificSeriesFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String videoLink;
  final List<Voice> _voices;
  @override
  List<Voice> get voices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voices);
  }

  @override
  String toString() {
    return 'SpecificSeries(title: $title, description: $description, videoLink: $videoLink, voices: $voices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecificSeries &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.videoLink, videoLink) &&
            const DeepCollectionEquality().equals(other._voices, _voices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(videoLink),
      const DeepCollectionEquality().hash(_voices));

  @JsonKey(ignore: true)
  @override
  _$$_SpecificSeriesCopyWith<_$_SpecificSeries> get copyWith =>
      __$$_SpecificSeriesCopyWithImpl<_$_SpecificSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecificSeriesToJson(this);
  }
}

abstract class _SpecificSeries implements SpecificSeries {
  factory _SpecificSeries(
      {required final String title,
      required final String description,
      required final String videoLink,
      required final List<Voice> voices}) = _$_SpecificSeries;

  factory _SpecificSeries.fromJson(Map<String, dynamic> json) =
      _$_SpecificSeries.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get videoLink => throw _privateConstructorUsedError;
  @override
  List<Voice> get voices => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpecificSeriesCopyWith<_$_SpecificSeries> get copyWith =>
      throw _privateConstructorUsedError;
}
