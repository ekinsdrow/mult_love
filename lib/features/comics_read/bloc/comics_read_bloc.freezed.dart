// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_read_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComicsReadEvent {
  String get url => throw _privateConstructorUsedError;
  String get serialUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String serialUrl) fetch,
    required TResult Function(int number, String url, String serialUrl)
        nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, String serialUrl)? fetch,
    TResult? Function(int number, String url, String serialUrl)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String serialUrl)? fetch,
    TResult Function(int number, String url, String serialUrl)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_NextPage value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_NextPage value)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_NextPage value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicsReadEventCopyWith<ComicsReadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsReadEventCopyWith<$Res> {
  factory $ComicsReadEventCopyWith(
          ComicsReadEvent value, $Res Function(ComicsReadEvent) then) =
      _$ComicsReadEventCopyWithImpl<$Res, ComicsReadEvent>;
  @useResult
  $Res call({String url, String serialUrl});
}

/// @nodoc
class _$ComicsReadEventCopyWithImpl<$Res, $Val extends ComicsReadEvent>
    implements $ComicsReadEventCopyWith<$Res> {
  _$ComicsReadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? serialUrl = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      serialUrl: null == serialUrl
          ? _value.serialUrl
          : serialUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res>
    implements $ComicsReadEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String serialUrl});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$ComicsReadEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? serialUrl = null,
  }) {
    return _then(_$_Fetch(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      serialUrl: null == serialUrl
          ? _value.serialUrl
          : serialUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch({required this.url, required this.serialUrl});

  @override
  final String url;
  @override
  final String serialUrl;

  @override
  String toString() {
    return 'ComicsReadEvent.fetch(url: $url, serialUrl: $serialUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.serialUrl, serialUrl) ||
                other.serialUrl == serialUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, serialUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String serialUrl) fetch,
    required TResult Function(int number, String url, String serialUrl)
        nextPage,
  }) {
    return fetch(url, serialUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, String serialUrl)? fetch,
    TResult? Function(int number, String url, String serialUrl)? nextPage,
  }) {
    return fetch?.call(url, serialUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String serialUrl)? fetch,
    TResult Function(int number, String url, String serialUrl)? nextPage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(url, serialUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_NextPage value) nextPage,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_NextPage value)? nextPage,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_NextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ComicsReadEvent {
  const factory _Fetch(
      {required final String url, required final String serialUrl}) = _$_Fetch;

  @override
  String get url;
  @override
  String get serialUrl;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageCopyWith<$Res>
    implements $ComicsReadEventCopyWith<$Res> {
  factory _$$_NextPageCopyWith(
          _$_NextPage value, $Res Function(_$_NextPage) then) =
      __$$_NextPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String url, String serialUrl});
}

/// @nodoc
class __$$_NextPageCopyWithImpl<$Res>
    extends _$ComicsReadEventCopyWithImpl<$Res, _$_NextPage>
    implements _$$_NextPageCopyWith<$Res> {
  __$$_NextPageCopyWithImpl(
      _$_NextPage _value, $Res Function(_$_NextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? url = null,
    Object? serialUrl = null,
  }) {
    return _then(_$_NextPage(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      serialUrl: null == serialUrl
          ? _value.serialUrl
          : serialUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NextPage implements _NextPage {
  const _$_NextPage(
      {required this.number, required this.url, required this.serialUrl});

  @override
  final int number;
  @override
  final String url;
  @override
  final String serialUrl;

  @override
  String toString() {
    return 'ComicsReadEvent.nextPage(number: $number, url: $url, serialUrl: $serialUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPage &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.serialUrl, serialUrl) ||
                other.serialUrl == serialUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, url, serialUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NextPageCopyWith<_$_NextPage> get copyWith =>
      __$$_NextPageCopyWithImpl<_$_NextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String serialUrl) fetch,
    required TResult Function(int number, String url, String serialUrl)
        nextPage,
  }) {
    return nextPage(number, url, serialUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, String serialUrl)? fetch,
    TResult? Function(int number, String url, String serialUrl)? nextPage,
  }) {
    return nextPage?.call(number, url, serialUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String serialUrl)? fetch,
    TResult Function(int number, String url, String serialUrl)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(number, url, serialUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_NextPage value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_NextPage value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_NextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements ComicsReadEvent {
  const factory _NextPage(
      {required final int number,
      required final String url,
      required final String serialUrl}) = _$_NextPage;

  int get number;
  @override
  String get url;
  @override
  String get serialUrl;
  @override
  @JsonKey(ignore: true)
  _$$_NextPageCopyWith<_$_NextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComicsReadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(ComicsModelPage comicsPage) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(ComicsModelPage comicsPage)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(ComicsModelPage comicsPage)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsReadStateCopyWith<$Res> {
  factory $ComicsReadStateCopyWith(
          ComicsReadState value, $Res Function(ComicsReadState) then) =
      _$ComicsReadStateCopyWithImpl<$Res, ComicsReadState>;
}

/// @nodoc
class _$ComicsReadStateCopyWithImpl<$Res, $Val extends ComicsReadState>
    implements $ComicsReadStateCopyWith<$Res> {
  _$ComicsReadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ComicsReadStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ComicsReadState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(ComicsModelPage comicsPage) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(ComicsModelPage comicsPage)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(ComicsModelPage comicsPage)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ComicsReadState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ComicsReadStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'ComicsReadState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(ComicsModelPage comicsPage) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(ComicsModelPage comicsPage)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(ComicsModelPage comicsPage)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ComicsReadState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ComicsModelPage comicsPage});

  $ComicsModelPageCopyWith<$Res> get comicsPage;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$ComicsReadStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comicsPage = null,
  }) {
    return _then(_$_Success(
      comicsPage: null == comicsPage
          ? _value.comicsPage
          : comicsPage // ignore: cast_nullable_to_non_nullable
              as ComicsModelPage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicsModelPageCopyWith<$Res> get comicsPage {
    return $ComicsModelPageCopyWith<$Res>(_value.comicsPage, (value) {
      return _then(_value.copyWith(comicsPage: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.comicsPage});

  @override
  final ComicsModelPage comicsPage;

  @override
  String toString() {
    return 'ComicsReadState.success(comicsPage: $comicsPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.comicsPage, comicsPage) ||
                other.comicsPage == comicsPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comicsPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(ComicsModelPage comicsPage) success,
  }) {
    return success(comicsPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(ComicsModelPage comicsPage)? success,
  }) {
    return success?.call(comicsPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(ComicsModelPage comicsPage)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(comicsPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ComicsReadState {
  const factory _Success({required final ComicsModelPage comicsPage}) =
      _$_Success;

  ComicsModelPage get comicsPage;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
