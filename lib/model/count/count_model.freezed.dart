// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountModel {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountModelCopyWith<CountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountModelCopyWith<$Res> {
  factory $CountModelCopyWith(
          CountModel value, $Res Function(CountModel) then) =
      _$CountModelCopyWithImpl<$Res, CountModel>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$CountModelCopyWithImpl<$Res, $Val extends CountModel>
    implements $CountModelCopyWith<$Res> {
  _$CountModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CountModelImplCopyWith<$Res>
    implements $CountModelCopyWith<$Res> {
  factory _$$CountModelImplCopyWith(
          _$CountModelImpl value, $Res Function(_$CountModelImpl) then) =
      __$$CountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$CountModelImplCopyWithImpl<$Res>
    extends _$CountModelCopyWithImpl<$Res, _$CountModelImpl>
    implements _$$CountModelImplCopyWith<$Res> {
  __$$CountModelImplCopyWithImpl(
      _$CountModelImpl _value, $Res Function(_$CountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$CountModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CountModelImpl implements _CountModel {
  const _$CountModelImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'CountModel(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountModelImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountModelImplCopyWith<_$CountModelImpl> get copyWith =>
      __$$CountModelImplCopyWithImpl<_$CountModelImpl>(this, _$identity);
}

abstract class _CountModel implements CountModel {
  const factory _CountModel({required final int count}) = _$CountModelImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$CountModelImplCopyWith<_$CountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
