// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicsCategory _$ComicsCategoryFromJson(Map<String, dynamic> json) {
  return _ComicsCategory.fromJson(json);
}

/// @nodoc
mixin _$ComicsCategory {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsCategoryCopyWith<ComicsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsCategoryCopyWith<$Res> {
  factory $ComicsCategoryCopyWith(
          ComicsCategory value, $Res Function(ComicsCategory) then) =
      _$ComicsCategoryCopyWithImpl<$Res, ComicsCategory>;
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class _$ComicsCategoryCopyWithImpl<$Res, $Val extends ComicsCategory>
    implements $ComicsCategoryCopyWith<$Res> {
  _$ComicsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicsCategoryCopyWith<$Res>
    implements $ComicsCategoryCopyWith<$Res> {
  factory _$$_ComicsCategoryCopyWith(
          _$_ComicsCategory value, $Res Function(_$_ComicsCategory) then) =
      __$$_ComicsCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class __$$_ComicsCategoryCopyWithImpl<$Res>
    extends _$ComicsCategoryCopyWithImpl<$Res, _$_ComicsCategory>
    implements _$$_ComicsCategoryCopyWith<$Res> {
  __$$_ComicsCategoryCopyWithImpl(
      _$_ComicsCategory _value, $Res Function(_$_ComicsCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_ComicsCategory(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicsCategory implements _ComicsCategory {
  _$_ComicsCategory({required this.title, required this.imageUrl});

  factory _$_ComicsCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsCategoryFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ComicsCategory(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsCategory &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsCategoryCopyWith<_$_ComicsCategory> get copyWith =>
      __$$_ComicsCategoryCopyWithImpl<_$_ComicsCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsCategoryToJson(
      this,
    );
  }
}

abstract class _ComicsCategory implements ComicsCategory {
  factory _ComicsCategory(
      {required final String title,
      required final String imageUrl}) = _$_ComicsCategory;

  factory _ComicsCategory.fromJson(Map<String, dynamic> json) =
      _$_ComicsCategory.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsCategoryCopyWith<_$_ComicsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
