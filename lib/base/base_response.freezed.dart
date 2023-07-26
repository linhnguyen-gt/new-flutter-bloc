// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseResponse<T> {
  bool get ok => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseResponseCopyWith<T, BaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<T, $Res> {
  factory $BaseResponseCopyWith(
          BaseResponse<T> value, $Res Function(BaseResponse<T>) then) =
      _$BaseResponseCopyWithImpl<T, $Res, BaseResponse<T>>;
  @useResult
  $Res call({bool ok, T? data, int? statusCode});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<T, $Res, $Val extends BaseResponse<T>>
    implements $BaseResponseCopyWith<T, $Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseResponseCopyWith<T, $Res>
    implements $BaseResponseCopyWith<T, $Res> {
  factory _$$_BaseResponseCopyWith(
          _$_BaseResponse<T> value, $Res Function(_$_BaseResponse<T>) then) =
      __$$_BaseResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool ok, T? data, int? statusCode});
}

/// @nodoc
class __$$_BaseResponseCopyWithImpl<T, $Res>
    extends _$BaseResponseCopyWithImpl<T, $Res, _$_BaseResponse<T>>
    implements _$$_BaseResponseCopyWith<T, $Res> {
  __$$_BaseResponseCopyWithImpl(
      _$_BaseResponse<T> _value, $Res Function(_$_BaseResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? data = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$_BaseResponse<T>(
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_BaseResponse<T> implements _BaseResponse<T> {
  const _$_BaseResponse(
      {required this.ok, required this.data, this.statusCode});

  @override
  final bool ok;
  @override
  final T? data;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'BaseResponse<$T>(ok: $ok, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseResponse<T> &&
            (identical(other.ok, ok) || other.ok == ok) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, ok, const DeepCollectionEquality().hash(data), statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseResponseCopyWith<T, _$_BaseResponse<T>> get copyWith =>
      __$$_BaseResponseCopyWithImpl<T, _$_BaseResponse<T>>(this, _$identity);
}

abstract class _BaseResponse<T> implements BaseResponse<T> {
  const factory _BaseResponse(
      {required final bool ok,
      required final T? data,
      final int? statusCode}) = _$_BaseResponse<T>;

  @override
  bool get ok;
  @override
  T? get data;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_BaseResponseCopyWith<T, _$_BaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
