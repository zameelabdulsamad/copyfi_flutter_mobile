// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetchdata.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchDataWithInitState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WIInit<T> value) initial,
    required TResult Function(_WILoading<T> value) loading,
    required TResult Function(_WISuccess<T> value) success,
    required TResult Function(_WIError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WIInit<T> value)? initial,
    TResult? Function(_WILoading<T> value)? loading,
    TResult? Function(_WISuccess<T> value)? success,
    TResult? Function(_WIError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WIInit<T> value)? initial,
    TResult Function(_WILoading<T> value)? loading,
    TResult Function(_WISuccess<T> value)? success,
    TResult Function(_WIError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDataWithInitStateCopyWith<T, $Res> {
  factory $FetchDataWithInitStateCopyWith(FetchDataWithInitState<T> value,
          $Res Function(FetchDataWithInitState<T>) then) =
      _$FetchDataWithInitStateCopyWithImpl<T, $Res, FetchDataWithInitState<T>>;
}

/// @nodoc
class _$FetchDataWithInitStateCopyWithImpl<T, $Res,
        $Val extends FetchDataWithInitState<T>>
    implements $FetchDataWithInitStateCopyWith<T, $Res> {
  _$FetchDataWithInitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WIInitCopyWith<T, $Res> {
  factory _$$_WIInitCopyWith(
          _$_WIInit<T> value, $Res Function(_$_WIInit<T>) then) =
      __$$_WIInitCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_WIInitCopyWithImpl<T, $Res>
    extends _$FetchDataWithInitStateCopyWithImpl<T, $Res, _$_WIInit<T>>
    implements _$$_WIInitCopyWith<T, $Res> {
  __$$_WIInitCopyWithImpl(
      _$_WIInit<T> _value, $Res Function(_$_WIInit<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WIInit<T> implements _WIInit<T> {
  const _$_WIInit();

  @override
  String toString() {
    return 'FetchDataWithInitState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WIInit<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WIInit<T> value) initial,
    required TResult Function(_WILoading<T> value) loading,
    required TResult Function(_WISuccess<T> value) success,
    required TResult Function(_WIError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WIInit<T> value)? initial,
    TResult? Function(_WILoading<T> value)? loading,
    TResult? Function(_WISuccess<T> value)? success,
    TResult? Function(_WIError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WIInit<T> value)? initial,
    TResult Function(_WILoading<T> value)? loading,
    TResult Function(_WISuccess<T> value)? success,
    TResult Function(_WIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WIInit<T> implements FetchDataWithInitState<T> {
  const factory _WIInit() = _$_WIInit<T>;
}

/// @nodoc
abstract class _$$_WILoadingCopyWith<T, $Res> {
  factory _$$_WILoadingCopyWith(
          _$_WILoading<T> value, $Res Function(_$_WILoading<T>) then) =
      __$$_WILoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_WILoadingCopyWithImpl<T, $Res>
    extends _$FetchDataWithInitStateCopyWithImpl<T, $Res, _$_WILoading<T>>
    implements _$$_WILoadingCopyWith<T, $Res> {
  __$$_WILoadingCopyWithImpl(
      _$_WILoading<T> _value, $Res Function(_$_WILoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_WILoading<T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WILoading<T> implements _WILoading<T> {
  const _$_WILoading({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'FetchDataWithInitState<$T>.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WILoading<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WILoadingCopyWith<T, _$_WILoading<T>> get copyWith =>
      __$$_WILoadingCopyWithImpl<T, _$_WILoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WIInit<T> value) initial,
    required TResult Function(_WILoading<T> value) loading,
    required TResult Function(_WISuccess<T> value) success,
    required TResult Function(_WIError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WIInit<T> value)? initial,
    TResult? Function(_WILoading<T> value)? loading,
    TResult? Function(_WISuccess<T> value)? success,
    TResult? Function(_WIError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WIInit<T> value)? initial,
    TResult Function(_WILoading<T> value)? loading,
    TResult Function(_WISuccess<T> value)? success,
    TResult Function(_WIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WILoading<T> implements FetchDataWithInitState<T> {
  const factory _WILoading({final String? message}) = _$_WILoading<T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$_WILoadingCopyWith<T, _$_WILoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WISuccessCopyWith<T, $Res> {
  factory _$$_WISuccessCopyWith(
          _$_WISuccess<T> value, $Res Function(_$_WISuccess<T>) then) =
      __$$_WISuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_WISuccessCopyWithImpl<T, $Res>
    extends _$FetchDataWithInitStateCopyWithImpl<T, $Res, _$_WISuccess<T>>
    implements _$$_WISuccessCopyWith<T, $Res> {
  __$$_WISuccessCopyWithImpl(
      _$_WISuccess<T> _value, $Res Function(_$_WISuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_WISuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_WISuccess<T> implements _WISuccess<T> {
  const _$_WISuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'FetchDataWithInitState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WISuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WISuccessCopyWith<T, _$_WISuccess<T>> get copyWith =>
      __$$_WISuccessCopyWithImpl<T, _$_WISuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WIInit<T> value) initial,
    required TResult Function(_WILoading<T> value) loading,
    required TResult Function(_WISuccess<T> value) success,
    required TResult Function(_WIError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WIInit<T> value)? initial,
    TResult? Function(_WILoading<T> value)? loading,
    TResult? Function(_WISuccess<T> value)? success,
    TResult? Function(_WIError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WIInit<T> value)? initial,
    TResult Function(_WILoading<T> value)? loading,
    TResult Function(_WISuccess<T> value)? success,
    TResult Function(_WIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _WISuccess<T> implements FetchDataWithInitState<T> {
  const factory _WISuccess(final T data) = _$_WISuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_WISuccessCopyWith<T, _$_WISuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WIErrorCopyWith<T, $Res> {
  factory _$$_WIErrorCopyWith(
          _$_WIError<T> value, $Res Function(_$_WIError<T>) then) =
      __$$_WIErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_WIErrorCopyWithImpl<T, $Res>
    extends _$FetchDataWithInitStateCopyWithImpl<T, $Res, _$_WIError<T>>
    implements _$$_WIErrorCopyWith<T, $Res> {
  __$$_WIErrorCopyWithImpl(
      _$_WIError<T> _value, $Res Function(_$_WIError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_WIError<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_WIError<T> implements _WIError<T> {
  const _$_WIError(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'FetchDataWithInitState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WIError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WIErrorCopyWith<T, _$_WIError<T>> get copyWith =>
      __$$_WIErrorCopyWithImpl<T, _$_WIError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WIInit<T> value) initial,
    required TResult Function(_WILoading<T> value) loading,
    required TResult Function(_WISuccess<T> value) success,
    required TResult Function(_WIError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WIInit<T> value)? initial,
    TResult? Function(_WILoading<T> value)? loading,
    TResult? Function(_WISuccess<T> value)? success,
    TResult? Function(_WIError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WIInit<T> value)? initial,
    TResult Function(_WILoading<T> value)? loading,
    TResult Function(_WISuccess<T> value)? success,
    TResult Function(_WIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WIError<T> implements FetchDataWithInitState<T> {
  const factory _WIError(final Failure error) = _$_WIError<T>;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_WIErrorCopyWith<T, _$_WIError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchDataValuedInitState<R, T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IVInit<R, T> value) initial,
    required TResult Function(_IVLoading<R, T> value) loading,
    required TResult Function(_IVSuccess<R, T> value) success,
    required TResult Function(_IVError<R, T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IVInit<R, T> value)? initial,
    TResult? Function(_IVLoading<R, T> value)? loading,
    TResult? Function(_IVSuccess<R, T> value)? success,
    TResult? Function(_IVError<R, T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IVInit<R, T> value)? initial,
    TResult Function(_IVLoading<R, T> value)? loading,
    TResult Function(_IVSuccess<R, T> value)? success,
    TResult Function(_IVError<R, T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDataValuedInitStateCopyWith<R, T, $Res> {
  factory $FetchDataValuedInitStateCopyWith(
          FetchDataValuedInitState<R, T> value,
          $Res Function(FetchDataValuedInitState<R, T>) then) =
      _$FetchDataValuedInitStateCopyWithImpl<R, T, $Res,
          FetchDataValuedInitState<R, T>>;
}

/// @nodoc
class _$FetchDataValuedInitStateCopyWithImpl<R, T, $Res,
        $Val extends FetchDataValuedInitState<R, T>>
    implements $FetchDataValuedInitStateCopyWith<R, T, $Res> {
  _$FetchDataValuedInitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IVInitCopyWith<R, T, $Res> {
  factory _$$_IVInitCopyWith(
          _$_IVInit<R, T> value, $Res Function(_$_IVInit<R, T>) then) =
      __$$_IVInitCopyWithImpl<R, T, $Res>;
  @useResult
  $Res call({R value});
}

/// @nodoc
class __$$_IVInitCopyWithImpl<R, T, $Res>
    extends _$FetchDataValuedInitStateCopyWithImpl<R, T, $Res, _$_IVInit<R, T>>
    implements _$$_IVInitCopyWith<R, T, $Res> {
  __$$_IVInitCopyWithImpl(
      _$_IVInit<R, T> _value, $Res Function(_$_IVInit<R, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_IVInit<R, T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$_IVInit<R, T> implements _IVInit<R, T> {
  const _$_IVInit(this.value);

  @override
  final R value;

  @override
  String toString() {
    return 'FetchDataValuedInitState<$R, $T>.initial(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IVInit<R, T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IVInitCopyWith<R, T, _$_IVInit<R, T>> get copyWith =>
      __$$_IVInitCopyWithImpl<R, T, _$_IVInit<R, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return initial(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return initial?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IVInit<R, T> value) initial,
    required TResult Function(_IVLoading<R, T> value) loading,
    required TResult Function(_IVSuccess<R, T> value) success,
    required TResult Function(_IVError<R, T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IVInit<R, T> value)? initial,
    TResult? Function(_IVLoading<R, T> value)? loading,
    TResult? Function(_IVSuccess<R, T> value)? success,
    TResult? Function(_IVError<R, T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IVInit<R, T> value)? initial,
    TResult Function(_IVLoading<R, T> value)? loading,
    TResult Function(_IVSuccess<R, T> value)? success,
    TResult Function(_IVError<R, T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _IVInit<R, T> implements FetchDataValuedInitState<R, T> {
  const factory _IVInit(final R value) = _$_IVInit<R, T>;

  R get value;
  @JsonKey(ignore: true)
  _$$_IVInitCopyWith<R, T, _$_IVInit<R, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IVLoadingCopyWith<R, T, $Res> {
  factory _$$_IVLoadingCopyWith(
          _$_IVLoading<R, T> value, $Res Function(_$_IVLoading<R, T>) then) =
      __$$_IVLoadingCopyWithImpl<R, T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_IVLoadingCopyWithImpl<R, T, $Res>
    extends _$FetchDataValuedInitStateCopyWithImpl<R, T, $Res,
        _$_IVLoading<R, T>> implements _$$_IVLoadingCopyWith<R, T, $Res> {
  __$$_IVLoadingCopyWithImpl(
      _$_IVLoading<R, T> _value, $Res Function(_$_IVLoading<R, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_IVLoading<R, T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_IVLoading<R, T> implements _IVLoading<R, T> {
  const _$_IVLoading({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'FetchDataValuedInitState<$R, $T>.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IVLoading<R, T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IVLoadingCopyWith<R, T, _$_IVLoading<R, T>> get copyWith =>
      __$$_IVLoadingCopyWithImpl<R, T, _$_IVLoading<R, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IVInit<R, T> value) initial,
    required TResult Function(_IVLoading<R, T> value) loading,
    required TResult Function(_IVSuccess<R, T> value) success,
    required TResult Function(_IVError<R, T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IVInit<R, T> value)? initial,
    TResult? Function(_IVLoading<R, T> value)? loading,
    TResult? Function(_IVSuccess<R, T> value)? success,
    TResult? Function(_IVError<R, T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IVInit<R, T> value)? initial,
    TResult Function(_IVLoading<R, T> value)? loading,
    TResult Function(_IVSuccess<R, T> value)? success,
    TResult Function(_IVError<R, T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _IVLoading<R, T> implements FetchDataValuedInitState<R, T> {
  const factory _IVLoading({final String? message}) = _$_IVLoading<R, T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$_IVLoadingCopyWith<R, T, _$_IVLoading<R, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IVSuccessCopyWith<R, T, $Res> {
  factory _$$_IVSuccessCopyWith(
          _$_IVSuccess<R, T> value, $Res Function(_$_IVSuccess<R, T>) then) =
      __$$_IVSuccessCopyWithImpl<R, T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_IVSuccessCopyWithImpl<R, T, $Res>
    extends _$FetchDataValuedInitStateCopyWithImpl<R, T, $Res,
        _$_IVSuccess<R, T>> implements _$$_IVSuccessCopyWith<R, T, $Res> {
  __$$_IVSuccessCopyWithImpl(
      _$_IVSuccess<R, T> _value, $Res Function(_$_IVSuccess<R, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_IVSuccess<R, T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_IVSuccess<R, T> implements _IVSuccess<R, T> {
  const _$_IVSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'FetchDataValuedInitState<$R, $T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IVSuccess<R, T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IVSuccessCopyWith<R, T, _$_IVSuccess<R, T>> get copyWith =>
      __$$_IVSuccessCopyWithImpl<R, T, _$_IVSuccess<R, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IVInit<R, T> value) initial,
    required TResult Function(_IVLoading<R, T> value) loading,
    required TResult Function(_IVSuccess<R, T> value) success,
    required TResult Function(_IVError<R, T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IVInit<R, T> value)? initial,
    TResult? Function(_IVLoading<R, T> value)? loading,
    TResult? Function(_IVSuccess<R, T> value)? success,
    TResult? Function(_IVError<R, T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IVInit<R, T> value)? initial,
    TResult Function(_IVLoading<R, T> value)? loading,
    TResult Function(_IVSuccess<R, T> value)? success,
    TResult Function(_IVError<R, T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _IVSuccess<R, T> implements FetchDataValuedInitState<R, T> {
  const factory _IVSuccess(final T data) = _$_IVSuccess<R, T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_IVSuccessCopyWith<R, T, _$_IVSuccess<R, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IVErrorCopyWith<R, T, $Res> {
  factory _$$_IVErrorCopyWith(
          _$_IVError<R, T> value, $Res Function(_$_IVError<R, T>) then) =
      __$$_IVErrorCopyWithImpl<R, T, $Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_IVErrorCopyWithImpl<R, T, $Res>
    extends _$FetchDataValuedInitStateCopyWithImpl<R, T, $Res, _$_IVError<R, T>>
    implements _$$_IVErrorCopyWith<R, T, $Res> {
  __$$_IVErrorCopyWithImpl(
      _$_IVError<R, T> _value, $Res Function(_$_IVError<R, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_IVError<R, T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_IVError<R, T> implements _IVError<R, T> {
  const _$_IVError(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'FetchDataValuedInitState<$R, $T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IVError<R, T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IVErrorCopyWith<R, T, _$_IVError<R, T>> get copyWith =>
      __$$_IVErrorCopyWithImpl<R, T, _$_IVError<R, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R value) initial,
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R value)? initial,
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R value)? initial,
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IVInit<R, T> value) initial,
    required TResult Function(_IVLoading<R, T> value) loading,
    required TResult Function(_IVSuccess<R, T> value) success,
    required TResult Function(_IVError<R, T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IVInit<R, T> value)? initial,
    TResult? Function(_IVLoading<R, T> value)? loading,
    TResult? Function(_IVSuccess<R, T> value)? success,
    TResult? Function(_IVError<R, T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IVInit<R, T> value)? initial,
    TResult Function(_IVLoading<R, T> value)? loading,
    TResult Function(_IVSuccess<R, T> value)? success,
    TResult Function(_IVError<R, T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _IVError<R, T> implements FetchDataValuedInitState<R, T> {
  const factory _IVError(final Failure error) = _$_IVError<R, T>;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_IVErrorCopyWith<R, T, _$_IVError<R, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchDataNoInitState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NILoading<T> value) loading,
    required TResult Function(_NISuccess<T> value) success,
    required TResult Function(_NIError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NILoading<T> value)? loading,
    TResult? Function(_NISuccess<T> value)? success,
    TResult? Function(_NIError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NILoading<T> value)? loading,
    TResult Function(_NISuccess<T> value)? success,
    TResult Function(_NIError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDataNoInitStateCopyWith<T, $Res> {
  factory $FetchDataNoInitStateCopyWith(FetchDataNoInitState<T> value,
          $Res Function(FetchDataNoInitState<T>) then) =
      _$FetchDataNoInitStateCopyWithImpl<T, $Res, FetchDataNoInitState<T>>;
}

/// @nodoc
class _$FetchDataNoInitStateCopyWithImpl<T, $Res,
        $Val extends FetchDataNoInitState<T>>
    implements $FetchDataNoInitStateCopyWith<T, $Res> {
  _$FetchDataNoInitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NILoadingCopyWith<T, $Res> {
  factory _$$_NILoadingCopyWith(
          _$_NILoading<T> value, $Res Function(_$_NILoading<T>) then) =
      __$$_NILoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_NILoadingCopyWithImpl<T, $Res>
    extends _$FetchDataNoInitStateCopyWithImpl<T, $Res, _$_NILoading<T>>
    implements _$$_NILoadingCopyWith<T, $Res> {
  __$$_NILoadingCopyWithImpl(
      _$_NILoading<T> _value, $Res Function(_$_NILoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NILoading<T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NILoading<T> implements _NILoading<T> {
  const _$_NILoading({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'FetchDataNoInitState<$T>.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NILoading<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NILoadingCopyWith<T, _$_NILoading<T>> get copyWith =>
      __$$_NILoadingCopyWithImpl<T, _$_NILoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NILoading<T> value) loading,
    required TResult Function(_NISuccess<T> value) success,
    required TResult Function(_NIError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NILoading<T> value)? loading,
    TResult? Function(_NISuccess<T> value)? success,
    TResult? Function(_NIError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NILoading<T> value)? loading,
    TResult Function(_NISuccess<T> value)? success,
    TResult Function(_NIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NILoading<T> implements FetchDataNoInitState<T> {
  const factory _NILoading({final String? message}) = _$_NILoading<T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$_NILoadingCopyWith<T, _$_NILoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NISuccessCopyWith<T, $Res> {
  factory _$$_NISuccessCopyWith(
          _$_NISuccess<T> value, $Res Function(_$_NISuccess<T>) then) =
      __$$_NISuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_NISuccessCopyWithImpl<T, $Res>
    extends _$FetchDataNoInitStateCopyWithImpl<T, $Res, _$_NISuccess<T>>
    implements _$$_NISuccessCopyWith<T, $Res> {
  __$$_NISuccessCopyWithImpl(
      _$_NISuccess<T> _value, $Res Function(_$_NISuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_NISuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_NISuccess<T> implements _NISuccess<T> {
  const _$_NISuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'FetchDataNoInitState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NISuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NISuccessCopyWith<T, _$_NISuccess<T>> get copyWith =>
      __$$_NISuccessCopyWithImpl<T, _$_NISuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NILoading<T> value) loading,
    required TResult Function(_NISuccess<T> value) success,
    required TResult Function(_NIError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NILoading<T> value)? loading,
    TResult? Function(_NISuccess<T> value)? success,
    TResult? Function(_NIError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NILoading<T> value)? loading,
    TResult Function(_NISuccess<T> value)? success,
    TResult Function(_NIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NISuccess<T> implements FetchDataNoInitState<T> {
  const factory _NISuccess(final T data) = _$_NISuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_NISuccessCopyWith<T, _$_NISuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NIErrorCopyWith<T, $Res> {
  factory _$$_NIErrorCopyWith(
          _$_NIError<T> value, $Res Function(_$_NIError<T>) then) =
      __$$_NIErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_NIErrorCopyWithImpl<T, $Res>
    extends _$FetchDataNoInitStateCopyWithImpl<T, $Res, _$_NIError<T>>
    implements _$$_NIErrorCopyWith<T, $Res> {
  __$$_NIErrorCopyWithImpl(
      _$_NIError<T> _value, $Res Function(_$_NIError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_NIError<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_NIError<T> implements _NIError<T> {
  const _$_NIError(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'FetchDataNoInitState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NIError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NIErrorCopyWith<T, _$_NIError<T>> get copyWith =>
      __$$_NIErrorCopyWithImpl<T, _$_NIError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NILoading<T> value) loading,
    required TResult Function(_NISuccess<T> value) success,
    required TResult Function(_NIError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NILoading<T> value)? loading,
    TResult? Function(_NISuccess<T> value)? success,
    TResult? Function(_NIError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NILoading<T> value)? loading,
    TResult Function(_NISuccess<T> value)? success,
    TResult Function(_NIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NIError<T> implements FetchDataNoInitState<T> {
  const factory _NIError(final Failure error) = _$_NIError<T>;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_NIErrorCopyWith<T, _$_NIError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
