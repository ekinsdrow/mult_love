// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicsModelPage _$ComicsModelPageFromJson(Map<String, dynamic> json) {
  return _ComicsModelPage.fromJson(json);
}

/// @nodoc
mixin _$ComicsModelPage {
  ComicsImage get currentImage => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get currentPageIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsModelPageCopyWith<ComicsModelPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsModelPageCopyWith<$Res> {
  factory $ComicsModelPageCopyWith(
          ComicsModelPage value, $Res Function(ComicsModelPage) then) =
      _$ComicsModelPageCopyWithImpl<$Res, ComicsModelPage>;
  @useResult
  $Res call({ComicsImage currentImage, int pageCount, int currentPageIndex});

  $ComicsImageCopyWith<$Res> get currentImage;
}

/// @nodoc
class _$ComicsModelPageCopyWithImpl<$Res, $Val extends ComicsModelPage>
    implements $ComicsModelPageCopyWith<$Res> {
  _$ComicsModelPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentImage = null,
    Object? pageCount = null,
    Object? currentPageIndex = null,
  }) {
    return _then(_value.copyWith(
      currentImage: null == currentImage
          ? _value.currentImage
          : currentImage // ignore: cast_nullable_to_non_nullable
              as ComicsImage,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicsImageCopyWith<$Res> get currentImage {
    return $ComicsImageCopyWith<$Res>(_value.currentImage, (value) {
      return _then(_value.copyWith(currentImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ComicsModelPageCopyWith<$Res>
    implements $ComicsModelPageCopyWith<$Res> {
  factory _$$_ComicsModelPageCopyWith(
          _$_ComicsModelPage value, $Res Function(_$_ComicsModelPage) then) =
      __$$_ComicsModelPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComicsImage currentImage, int pageCount, int currentPageIndex});

  @override
  $ComicsImageCopyWith<$Res> get currentImage;
}

/// @nodoc
class __$$_ComicsModelPageCopyWithImpl<$Res>
    extends _$ComicsModelPageCopyWithImpl<$Res, _$_ComicsModelPage>
    implements _$$_ComicsModelPageCopyWith<$Res> {
  __$$_ComicsModelPageCopyWithImpl(
      _$_ComicsModelPage _value, $Res Function(_$_ComicsModelPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentImage = null,
    Object? pageCount = null,
    Object? currentPageIndex = null,
  }) {
    return _then(_$_ComicsModelPage(
      currentImage: null == currentImage
          ? _value.currentImage
          : currentImage // ignore: cast_nullable_to_non_nullable
              as ComicsImage,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicsModelPage implements _ComicsModelPage {
  _$_ComicsModelPage(
      {required this.currentImage,
      required this.pageCount,
      required this.currentPageIndex});

  factory _$_ComicsModelPage.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsModelPageFromJson(json);

  @override
  final ComicsImage currentImage;
  @override
  final int pageCount;
  @override
  final int currentPageIndex;

  @override
  String toString() {
    return 'ComicsModelPage(currentImage: $currentImage, pageCount: $pageCount, currentPageIndex: $currentPageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsModelPage &&
            (identical(other.currentImage, currentImage) ||
                other.currentImage == currentImage) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentImage, pageCount, currentPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsModelPageCopyWith<_$_ComicsModelPage> get copyWith =>
      __$$_ComicsModelPageCopyWithImpl<_$_ComicsModelPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsModelPageToJson(
      this,
    );
  }
}

abstract class _ComicsModelPage implements ComicsModelPage {
  factory _ComicsModelPage(
      {required final ComicsImage currentImage,
      required final int pageCount,
      required final int currentPageIndex}) = _$_ComicsModelPage;

  factory _ComicsModelPage.fromJson(Map<String, dynamic> json) =
      _$_ComicsModelPage.fromJson;

  @override
  ComicsImage get currentImage;
  @override
  int get pageCount;
  @override
  int get currentPageIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsModelPageCopyWith<_$_ComicsModelPage> get copyWith =>
      throw _privateConstructorUsedError;
}
