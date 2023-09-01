// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetLoading {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetLoadingCopyWith<SetLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetLoadingCopyWith<$Res> {
  factory $SetLoadingCopyWith(
          SetLoading value, $Res Function(SetLoading) then) =
      _$SetLoadingCopyWithImpl<$Res, SetLoading>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$SetLoadingCopyWithImpl<$Res, $Val extends SetLoading>
    implements $SetLoadingCopyWith<$Res> {
  _$SetLoadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetLoadingCopyWith<$Res>
    implements $SetLoadingCopyWith<$Res> {
  factory _$$_SetLoadingCopyWith(
          _$_SetLoading value, $Res Function(_$_SetLoading) then) =
      __$$_SetLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_SetLoadingCopyWithImpl<$Res>
    extends _$SetLoadingCopyWithImpl<$Res, _$_SetLoading>
    implements _$$_SetLoadingCopyWith<$Res> {
  __$$_SetLoadingCopyWithImpl(
      _$_SetLoading _value, $Res Function(_$_SetLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_SetLoading(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetLoading implements _SetLoading {
  const _$_SetLoading({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SetLoading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetLoading &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetLoadingCopyWith<_$_SetLoading> get copyWith =>
      __$$_SetLoadingCopyWithImpl<_$_SetLoading>(this, _$identity);
}

abstract class _SetLoading implements SetLoading {
  const factory _SetLoading({required final bool isLoading}) = _$_SetLoading;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SetLoadingCopyWith<_$_SetLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonStateCopyWith<CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(
          CommonState value, $Res Function(CommonState) then) =
      _$CommonStateCopyWithImpl<$Res, CommonState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res, $Val extends CommonState>
    implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonStateCopyWith<$Res>
    implements $CommonStateCopyWith<$Res> {
  factory _$$_CommonStateCopyWith(
          _$_CommonState value, $Res Function(_$_CommonState) then) =
      __$$_CommonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_CommonStateCopyWithImpl<$Res>
    extends _$CommonStateCopyWithImpl<$Res, _$_CommonState>
    implements _$$_CommonStateCopyWith<$Res> {
  __$$_CommonStateCopyWithImpl(
      _$_CommonState _value, $Res Function(_$_CommonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_CommonState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommonState implements _CommonState {
  const _$_CommonState({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CommonState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonStateCopyWith<_$_CommonState> get copyWith =>
      __$$_CommonStateCopyWithImpl<_$_CommonState>(this, _$identity);
}

abstract class _CommonState implements CommonState {
  const factory _CommonState({final bool isLoading}) = _$_CommonState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CommonStateCopyWith<_$_CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}
