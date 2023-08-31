// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
mixin _$CountState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountStateCopyWith<CountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountStateCopyWith<$Res> {
  factory $CountStateCopyWith(
          CountState value, $Res Function(CountState) then) =
      _$CountStateCopyWithImpl<$Res, CountState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$CountStateCopyWithImpl<$Res, $Val extends CountState>
    implements $CountStateCopyWith<$Res> {
  _$CountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountStateCopyWith<$Res>
    implements $CountStateCopyWith<$Res> {
  factory _$$_CountStateCopyWith(
          _$_CountState value, $Res Function(_$_CountState) then) =
      __$$_CountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_CountStateCopyWithImpl<$Res>
    extends _$CountStateCopyWithImpl<$Res, _$_CountState>
    implements _$$_CountStateCopyWith<$Res> {
  __$$_CountStateCopyWithImpl(
      _$_CountState _value, $Res Function(_$_CountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_CountState(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CountState implements _CountState {
  const _$_CountState({this.count = 0});

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'CountState(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountState &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountStateCopyWith<_$_CountState> get copyWith =>
      __$$_CountStateCopyWithImpl<_$_CountState>(this, _$identity);
}

abstract class _CountState implements CountState {
  const factory _CountState({final int count}) = _$_CountState;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_CountStateCopyWith<_$_CountState> get copyWith =>
      throw _privateConstructorUsedError;
}
