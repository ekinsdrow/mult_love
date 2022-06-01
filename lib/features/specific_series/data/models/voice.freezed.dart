// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'voice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Voice _$VoiceFromJson(Map<String, dynamic> json) {
  return _Voice.fromJson(json);
}

/// @nodoc
mixin _$Voice {
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoiceCopyWith<Voice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceCopyWith<$Res> {
  factory $VoiceCopyWith(Voice value, $Res Function(Voice) then) =
      _$VoiceCopyWithImpl<$Res>;
  $Res call({String name, String link});
}

/// @nodoc
class _$VoiceCopyWithImpl<$Res> implements $VoiceCopyWith<$Res> {
  _$VoiceCopyWithImpl(this._value, this._then);

  final Voice _value;
  // ignore: unused_field
  final $Res Function(Voice) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VoiceCopyWith<$Res> implements $VoiceCopyWith<$Res> {
  factory _$$_VoiceCopyWith(_$_Voice value, $Res Function(_$_Voice) then) =
      __$$_VoiceCopyWithImpl<$Res>;
  @override
  $Res call({String name, String link});
}

/// @nodoc
class __$$_VoiceCopyWithImpl<$Res> extends _$VoiceCopyWithImpl<$Res>
    implements _$$_VoiceCopyWith<$Res> {
  __$$_VoiceCopyWithImpl(_$_Voice _value, $Res Function(_$_Voice) _then)
      : super(_value, (v) => _then(v as _$_Voice));

  @override
  _$_Voice get _value => super._value as _$_Voice;

  @override
  $Res call({
    Object? name = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_Voice(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_Voice implements _Voice {
  _$_Voice({required this.name, required this.link});

  factory _$_Voice.fromJson(Map<String, dynamic> json) =>
      _$$_VoiceFromJson(json);

  @override
  final String name;
  @override
  final String link;

  @override
  String toString() {
    return 'Voice(name: $name, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Voice &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_VoiceCopyWith<_$_Voice> get copyWith =>
      __$$_VoiceCopyWithImpl<_$_Voice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoiceToJson(this);
  }
}

abstract class _Voice implements Voice {
  factory _Voice({required final String name, required final String link}) =
      _$_Voice;

  factory _Voice.fromJson(Map<String, dynamic> json) = _$_Voice.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VoiceCopyWith<_$_Voice> get copyWith =>
      throw _privateConstructorUsedError;
}
