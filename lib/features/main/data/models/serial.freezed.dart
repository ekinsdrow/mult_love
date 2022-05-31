// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'serial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Serial _$SerialFromJson(Map<String, dynamic> json) {
  return _Serial.fromJson(json);
}

/// @nodoc
mixin _$Serial {
  String get imageUrl => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SerialCopyWith<Serial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerialCopyWith<$Res> {
  factory $SerialCopyWith(Serial value, $Res Function(Serial) then) =
      _$SerialCopyWithImpl<$Res>;
  $Res call({String imageUrl, String link});
}

/// @nodoc
class _$SerialCopyWithImpl<$Res> implements $SerialCopyWith<$Res> {
  _$SerialCopyWithImpl(this._value, this._then);

  final Serial _value;
  // ignore: unused_field
  final $Res Function(Serial) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SerialCopyWith<$Res> implements $SerialCopyWith<$Res> {
  factory _$$_SerialCopyWith(_$_Serial value, $Res Function(_$_Serial) then) =
      __$$_SerialCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String link});
}

/// @nodoc
class __$$_SerialCopyWithImpl<$Res> extends _$SerialCopyWithImpl<$Res>
    implements _$$_SerialCopyWith<$Res> {
  __$$_SerialCopyWithImpl(_$_Serial _value, $Res Function(_$_Serial) _then)
      : super(_value, (v) => _then(v as _$_Serial));

  @override
  _$_Serial get _value => super._value as _$_Serial;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_Serial(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Serial implements _Serial {
  _$_Serial({required this.imageUrl, required this.link});

  factory _$_Serial.fromJson(Map<String, dynamic> json) =>
      _$$_SerialFromJson(json);

  @override
  final String imageUrl;
  @override
  final String link;

  @override
  String toString() {
    return 'Serial(imageUrl: $imageUrl, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Serial &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_SerialCopyWith<_$_Serial> get copyWith =>
      __$$_SerialCopyWithImpl<_$_Serial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SerialToJson(this);
  }
}

abstract class _Serial implements Serial {
  factory _Serial(
      {required final String imageUrl, required final String link}) = _$_Serial;

  factory _Serial.fromJson(Map<String, dynamic> json) = _$_Serial.fromJson;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SerialCopyWith<_$_Serial> get copyWith =>
      throw _privateConstructorUsedError;
}
