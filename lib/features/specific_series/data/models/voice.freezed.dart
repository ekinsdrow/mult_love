// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  bool get isActive => throw _privateConstructorUsedError;
  bool get isSub => throw _privateConstructorUsedError;
  SubType? get subType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoiceCopyWith<Voice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceCopyWith<$Res> {
  factory $VoiceCopyWith(Voice value, $Res Function(Voice) then) =
      _$VoiceCopyWithImpl<$Res, Voice>;
  @useResult
  $Res call(
      {String name, String link, bool isActive, bool isSub, SubType? subType});
}

/// @nodoc
class _$VoiceCopyWithImpl<$Res, $Val extends Voice>
    implements $VoiceCopyWith<$Res> {
  _$VoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? link = null,
    Object? isActive = null,
    Object? isSub = null,
    Object? subType = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSub: null == isSub
          ? _value.isSub
          : isSub // ignore: cast_nullable_to_non_nullable
              as bool,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as SubType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoiceCopyWith<$Res> implements $VoiceCopyWith<$Res> {
  factory _$$_VoiceCopyWith(_$_Voice value, $Res Function(_$_Voice) then) =
      __$$_VoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String link, bool isActive, bool isSub, SubType? subType});
}

/// @nodoc
class __$$_VoiceCopyWithImpl<$Res> extends _$VoiceCopyWithImpl<$Res, _$_Voice>
    implements _$$_VoiceCopyWith<$Res> {
  __$$_VoiceCopyWithImpl(_$_Voice _value, $Res Function(_$_Voice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? link = null,
    Object? isActive = null,
    Object? isSub = null,
    Object? subType = freezed,
  }) {
    return _then(_$_Voice(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSub: null == isSub
          ? _value.isSub
          : isSub // ignore: cast_nullable_to_non_nullable
              as bool,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as SubType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Voice implements _Voice {
  _$_Voice(
      {required this.name,
      required this.link,
      required this.isActive,
      required this.isSub,
      required this.subType});

  factory _$_Voice.fromJson(Map<String, dynamic> json) =>
      _$$_VoiceFromJson(json);

  @override
  final String name;
  @override
  final String link;
  @override
  final bool isActive;
  @override
  final bool isSub;
  @override
  final SubType? subType;

  @override
  String toString() {
    return 'Voice(name: $name, link: $link, isActive: $isActive, isSub: $isSub, subType: $subType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Voice &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isSub, isSub) || other.isSub == isSub) &&
            (identical(other.subType, subType) || other.subType == subType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, link, isActive, isSub, subType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoiceCopyWith<_$_Voice> get copyWith =>
      __$$_VoiceCopyWithImpl<_$_Voice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoiceToJson(
      this,
    );
  }
}

abstract class _Voice implements Voice {
  factory _Voice(
      {required final String name,
      required final String link,
      required final bool isActive,
      required final bool isSub,
      required final SubType? subType}) = _$_Voice;

  factory _Voice.fromJson(Map<String, dynamic> json) = _$_Voice.fromJson;

  @override
  String get name;
  @override
  String get link;
  @override
  bool get isActive;
  @override
  bool get isSub;
  @override
  SubType? get subType;
  @override
  @JsonKey(ignore: true)
  _$$_VoiceCopyWith<_$_Voice> get copyWith =>
      throw _privateConstructorUsedError;
}
