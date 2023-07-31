// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comics _$ComicsFromJson(Map<String, dynamic> json) {
  return _Comics.fromJson(json);
}

/// @nodoc
mixin _$Comics {
  String get imageUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsCopyWith<Comics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsCopyWith<$Res> {
  factory $ComicsCopyWith(Comics value, $Res Function(Comics) then) =
      _$ComicsCopyWithImpl<$Res, Comics>;
  @useResult
  $Res call({String imageUrl, String url});
}

/// @nodoc
class _$ComicsCopyWithImpl<$Res, $Val extends Comics>
    implements $ComicsCopyWith<$Res> {
  _$ComicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicsCopyWith<$Res> implements $ComicsCopyWith<$Res> {
  factory _$$_ComicsCopyWith(_$_Comics value, $Res Function(_$_Comics) then) =
      __$$_ComicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String url});
}

/// @nodoc
class __$$_ComicsCopyWithImpl<$Res>
    extends _$ComicsCopyWithImpl<$Res, _$_Comics>
    implements _$$_ComicsCopyWith<$Res> {
  __$$_ComicsCopyWithImpl(_$_Comics _value, $Res Function(_$_Comics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? url = null,
  }) {
    return _then(_$_Comics(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comics implements _Comics {
  _$_Comics({required this.imageUrl, required this.url});

  factory _$_Comics.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsFromJson(json);

  @override
  final String imageUrl;
  @override
  final String url;

  @override
  String toString() {
    return 'Comics(imageUrl: $imageUrl, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comics &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsCopyWith<_$_Comics> get copyWith =>
      __$$_ComicsCopyWithImpl<_$_Comics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsToJson(
      this,
    );
  }
}

abstract class _Comics implements Comics {
  factory _Comics({required final String imageUrl, required final String url}) =
      _$_Comics;

  factory _Comics.fromJson(Map<String, dynamic> json) = _$_Comics.fromJson;

  @override
  String get imageUrl;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsCopyWith<_$_Comics> get copyWith =>
      throw _privateConstructorUsedError;
}
