// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallResponse {}

/// @nodoc
abstract class $CallResponseCopyWith<$Res> {
  factory $CallResponseCopyWith(
          CallResponse value, $Res Function(CallResponse) then) =
      _$CallResponseCopyWithImpl<$Res, CallResponse>;
}

/// @nodoc
class _$CallResponseCopyWithImpl<$Res, $Val extends CallResponse>
    implements $CallResponseCopyWith<$Res> {
  _$CallResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CallResponseCopyWith<$Res> {
  factory _$$_CallResponseCopyWith(
          _$_CallResponse value, $Res Function(_$_CallResponse) then) =
      __$$_CallResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CallResponseCopyWithImpl<$Res>
    extends _$CallResponseCopyWithImpl<$Res, _$_CallResponse>
    implements _$$_CallResponseCopyWith<$Res> {
  __$$_CallResponseCopyWithImpl(
      _$_CallResponse _value, $Res Function(_$_CallResponse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CallResponse implements _CallResponse {
  const _$_CallResponse();

  @override
  String toString() {
    return 'CallResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CallResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CallResponse implements CallResponse {
  const factory _CallResponse() = _$_CallResponse;
}

/// @nodoc
mixin _$Count {}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res, Count>;
}

/// @nodoc
class _$CountCopyWithImpl<$Res, $Val extends Count>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CountCopyWith<$Res> {
  factory _$$_CountCopyWith(_$_Count value, $Res Function(_$_Count) then) =
      __$$_CountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountCopyWithImpl<$Res> extends _$CountCopyWithImpl<$Res, _$_Count>
    implements _$$_CountCopyWith<$Res> {
  __$$_CountCopyWithImpl(_$_Count _value, $Res Function(_$_Count) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Count implements _Count {
  const _$_Count();

  @override
  String toString() {
    return 'Count()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Count);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Count implements Count {
  const factory _Count() = _$_Count;
}

/// @nodoc
mixin _$ResponseState {
  List<ResponseModel> get data => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseStateCopyWith<ResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseStateCopyWith<$Res> {
  factory $ResponseStateCopyWith(
          ResponseState value, $Res Function(ResponseState) then) =
      _$ResponseStateCopyWithImpl<$Res, ResponseState>;
  @useResult
  $Res call({List<ResponseModel> data, int count});
}

/// @nodoc
class _$ResponseStateCopyWithImpl<$Res, $Val extends ResponseState>
    implements $ResponseStateCopyWith<$Res> {
  _$ResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseModel>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseStateCopyWith<$Res>
    implements $ResponseStateCopyWith<$Res> {
  factory _$$_ResponseStateCopyWith(
          _$_ResponseState value, $Res Function(_$_ResponseState) then) =
      __$$_ResponseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResponseModel> data, int count});
}

/// @nodoc
class __$$_ResponseStateCopyWithImpl<$Res>
    extends _$ResponseStateCopyWithImpl<$Res, _$_ResponseState>
    implements _$$_ResponseStateCopyWith<$Res> {
  __$$_ResponseStateCopyWithImpl(
      _$_ResponseState _value, $Res Function(_$_ResponseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? count = null,
  }) {
    return _then(_$_ResponseState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseModel>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ResponseState implements _ResponseState {
  const _$_ResponseState(
      {final List<ResponseModel> data = const [], this.count = 0})
      : _data = data;

  final List<ResponseModel> _data;
  @override
  @JsonKey()
  List<ResponseModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'ResponseState(data: $data, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseState &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseStateCopyWith<_$_ResponseState> get copyWith =>
      __$$_ResponseStateCopyWithImpl<_$_ResponseState>(this, _$identity);
}

abstract class _ResponseState implements ResponseState {
  const factory _ResponseState(
      {final List<ResponseModel> data, final int count}) = _$_ResponseState;

  @override
  List<ResponseModel> get data;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseStateCopyWith<_$_ResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}
