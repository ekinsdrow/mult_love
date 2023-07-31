// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicsImage _$ComicsImageFromJson(Map<String, dynamic> json) {
  return _ComicsImage.fromJson(json);
}

/// @nodoc
mixin _$ComicsImage {
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsImageCopyWith<ComicsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsImageCopyWith<$Res> {
  factory $ComicsImageCopyWith(
          ComicsImage value, $Res Function(ComicsImage) then) =
      _$ComicsImageCopyWithImpl<$Res, ComicsImage>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class _$ComicsImageCopyWithImpl<$Res, $Val extends ComicsImage>
    implements $ComicsImageCopyWith<$Res> {
  _$ComicsImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicsImageCopyWith<$Res>
    implements $ComicsImageCopyWith<$Res> {
  factory _$$_ComicsImageCopyWith(
          _$_ComicsImage value, $Res Function(_$_ComicsImage) then) =
      __$$_ComicsImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$_ComicsImageCopyWithImpl<$Res>
    extends _$ComicsImageCopyWithImpl<$Res, _$_ComicsImage>
    implements _$$_ComicsImageCopyWith<$Res> {
  __$$_ComicsImageCopyWithImpl(
      _$_ComicsImage _value, $Res Function(_$_ComicsImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$_ComicsImage(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicsImage implements _ComicsImage {
  _$_ComicsImage({required this.imageUrl});

  factory _$_ComicsImage.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsImageFromJson(json);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ComicsImage(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsImageCopyWith<_$_ComicsImage> get copyWith =>
      __$$_ComicsImageCopyWithImpl<_$_ComicsImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsImageToJson(
      this,
    );
  }
}

abstract class _ComicsImage implements ComicsImage {
  factory _ComicsImage({required final String imageUrl}) = _$_ComicsImage;

  factory _ComicsImage.fromJson(Map<String, dynamic> json) =
      _$_ComicsImage.fromJson;

  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsImageCopyWith<_$_ComicsImage> get copyWith =>
      throw _privateConstructorUsedError;
}
