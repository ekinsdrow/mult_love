// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarEvent {
  String get serialUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String serialUrl) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String serialUrl)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String serialUrl)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fecth value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fecth value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fecth value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res>;
  $Res call({String serialUrl});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  final CalendarEvent _value;
  // ignore: unused_field
  final $Res Function(CalendarEvent) _then;

  @override
  $Res call({
    Object? serialUrl = freezed,
  }) {
    return _then(_value.copyWith(
      serialUrl: serialUrl == freezed
          ? _value.serialUrl
          : serialUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FecthCopyWith<$Res> implements $CalendarEventCopyWith<$Res> {
  factory _$$_FecthCopyWith(_$_Fecth value, $Res Function(_$_Fecth) then) =
      __$$_FecthCopyWithImpl<$Res>;
  @override
  $Res call({String serialUrl});
}

/// @nodoc
class __$$_FecthCopyWithImpl<$Res> extends _$CalendarEventCopyWithImpl<$Res>
    implements _$$_FecthCopyWith<$Res> {
  __$$_FecthCopyWithImpl(_$_Fecth _value, $Res Function(_$_Fecth) _then)
      : super(_value, (v) => _then(v as _$_Fecth));

  @override
  _$_Fecth get _value => super._value as _$_Fecth;

  @override
  $Res call({
    Object? serialUrl = freezed,
  }) {
    return _then(_$_Fecth(
      serialUrl: serialUrl == freezed
          ? _value.serialUrl
          : serialUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Fecth implements _Fecth {
  const _$_Fecth({required this.serialUrl});

  @override
  final String serialUrl;

  @override
  String toString() {
    return 'CalendarEvent.fetch(serialUrl: $serialUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fecth &&
            const DeepCollectionEquality().equals(other.serialUrl, serialUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(serialUrl));

  @JsonKey(ignore: true)
  @override
  _$$_FecthCopyWith<_$_Fecth> get copyWith =>
      __$$_FecthCopyWithImpl<_$_Fecth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String serialUrl) fetch,
  }) {
    return fetch(serialUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String serialUrl)? fetch,
  }) {
    return fetch?.call(serialUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String serialUrl)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(serialUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fecth value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fecth value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fecth value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fecth implements CalendarEvent {
  const factory _Fecth({required final String serialUrl}) = _$_Fecth;

  @override
  String get serialUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FecthCopyWith<_$_Fecth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unknownError,
    required TResult Function() dontHaveCalendarError,
    required TResult Function(List<CalendarSeriesEvent> events) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) unknownError,
    required TResult Function(_NotHaveCalendarError value)
        dontHaveCalendarError,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CalendarState.loading()';
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
    required TResult Function() unknownError,
    required TResult Function() dontHaveCalendarError,
    required TResult Function(List<CalendarSeriesEvent> events) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
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
    required TResult Function(_Error value) unknownError,
    required TResult Function(_NotHaveCalendarError value)
        dontHaveCalendarError,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CalendarState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CalendarState.unknownError()';
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
    required TResult Function() unknownError,
    required TResult Function() dontHaveCalendarError,
    required TResult Function(List<CalendarSeriesEvent> events) success,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) unknownError,
    required TResult Function(_NotHaveCalendarError value)
        dontHaveCalendarError,
    required TResult Function(_Success value) success,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _Error implements CalendarState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_NotHaveCalendarErrorCopyWith<$Res> {
  factory _$$_NotHaveCalendarErrorCopyWith(_$_NotHaveCalendarError value,
          $Res Function(_$_NotHaveCalendarError) then) =
      __$$_NotHaveCalendarErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotHaveCalendarErrorCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$_NotHaveCalendarErrorCopyWith<$Res> {
  __$$_NotHaveCalendarErrorCopyWithImpl(_$_NotHaveCalendarError _value,
      $Res Function(_$_NotHaveCalendarError) _then)
      : super(_value, (v) => _then(v as _$_NotHaveCalendarError));

  @override
  _$_NotHaveCalendarError get _value => super._value as _$_NotHaveCalendarError;
}

/// @nodoc

class _$_NotHaveCalendarError implements _NotHaveCalendarError {
  const _$_NotHaveCalendarError();

  @override
  String toString() {
    return 'CalendarState.dontHaveCalendarError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotHaveCalendarError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unknownError,
    required TResult Function() dontHaveCalendarError,
    required TResult Function(List<CalendarSeriesEvent> events) success,
  }) {
    return dontHaveCalendarError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
  }) {
    return dontHaveCalendarError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
    required TResult orElse(),
  }) {
    if (dontHaveCalendarError != null) {
      return dontHaveCalendarError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) unknownError,
    required TResult Function(_NotHaveCalendarError value)
        dontHaveCalendarError,
    required TResult Function(_Success value) success,
  }) {
    return dontHaveCalendarError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
  }) {
    return dontHaveCalendarError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (dontHaveCalendarError != null) {
      return dontHaveCalendarError(this);
    }
    return orElse();
  }
}

abstract class _NotHaveCalendarError implements CalendarState {
  const factory _NotHaveCalendarError() = _$_NotHaveCalendarError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({List<CalendarSeriesEvent> events});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(_$_Success(
      events: events == freezed
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarSeriesEvent>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required final List<CalendarSeriesEvent> events})
      : _events = events;

  final List<CalendarSeriesEvent> _events;
  @override
  List<CalendarSeriesEvent> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'CalendarState.success(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unknownError,
    required TResult Function() dontHaveCalendarError,
    required TResult Function(List<CalendarSeriesEvent> events) success,
  }) {
    return success(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
  }) {
    return success?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unknownError,
    TResult Function()? dontHaveCalendarError,
    TResult Function(List<CalendarSeriesEvent> events)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) unknownError,
    required TResult Function(_NotHaveCalendarError value)
        dontHaveCalendarError,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? unknownError,
    TResult Function(_NotHaveCalendarError value)? dontHaveCalendarError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CalendarState {
  const factory _Success({required final List<CalendarSeriesEvent> events}) =
      _$_Success;

  List<CalendarSeriesEvent> get events => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
