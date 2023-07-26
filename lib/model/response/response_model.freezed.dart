// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponseModel {
  String get idNation => throw _privateConstructorUsedError;
  String get nation => throw _privateConstructorUsedError;
  int get idYear => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  String get slugNation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res, ResponseModel>;
  @useResult
  $Res call(
      {String idNation,
      String nation,
      int idYear,
      String year,
      int population,
      String slugNation});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res, $Val extends ResponseModel>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idNation = null,
    Object? nation = null,
    Object? idYear = null,
    Object? year = null,
    Object? population = null,
    Object? slugNation = null,
  }) {
    return _then(_value.copyWith(
      idNation: null == idNation
          ? _value.idNation
          : idNation // ignore: cast_nullable_to_non_nullable
              as String,
      nation: null == nation
          ? _value.nation
          : nation // ignore: cast_nullable_to_non_nullable
              as String,
      idYear: null == idYear
          ? _value.idYear
          : idYear // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      slugNation: null == slugNation
          ? _value.slugNation
          : slugNation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$_ResponseModelCopyWith(
          _$_ResponseModel value, $Res Function(_$_ResponseModel) then) =
      __$$_ResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idNation,
      String nation,
      int idYear,
      String year,
      int population,
      String slugNation});
}

/// @nodoc
class __$$_ResponseModelCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$_ResponseModel>
    implements _$$_ResponseModelCopyWith<$Res> {
  __$$_ResponseModelCopyWithImpl(
      _$_ResponseModel _value, $Res Function(_$_ResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idNation = null,
    Object? nation = null,
    Object? idYear = null,
    Object? year = null,
    Object? population = null,
    Object? slugNation = null,
  }) {
    return _then(_$_ResponseModel(
      idNation: null == idNation
          ? _value.idNation
          : idNation // ignore: cast_nullable_to_non_nullable
              as String,
      nation: null == nation
          ? _value.nation
          : nation // ignore: cast_nullable_to_non_nullable
              as String,
      idYear: null == idYear
          ? _value.idYear
          : idYear // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      slugNation: null == slugNation
          ? _value.slugNation
          : slugNation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResponseModel implements _ResponseModel {
  _$_ResponseModel(
      {required this.idNation,
      required this.nation,
      required this.idYear,
      required this.year,
      required this.population,
      required this.slugNation});

  @override
  final String idNation;
  @override
  final String nation;
  @override
  final int idYear;
  @override
  final String year;
  @override
  final int population;
  @override
  final String slugNation;

  @override
  String toString() {
    return 'ResponseModel(idNation: $idNation, nation: $nation, idYear: $idYear, year: $year, population: $population, slugNation: $slugNation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseModel &&
            (identical(other.idNation, idNation) ||
                other.idNation == idNation) &&
            (identical(other.nation, nation) || other.nation == nation) &&
            (identical(other.idYear, idYear) || other.idYear == idYear) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.slugNation, slugNation) ||
                other.slugNation == slugNation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, idNation, nation, idYear, year, population, slugNation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseModelCopyWith<_$_ResponseModel> get copyWith =>
      __$$_ResponseModelCopyWithImpl<_$_ResponseModel>(this, _$identity);
}

abstract class _ResponseModel implements ResponseModel {
  factory _ResponseModel(
      {required final String idNation,
      required final String nation,
      required final int idYear,
      required final String year,
      required final int population,
      required final String slugNation}) = _$_ResponseModel;

  @override
  String get idNation;
  @override
  String get nation;
  @override
  int get idYear;
  @override
  String get year;
  @override
  int get population;
  @override
  String get slugNation;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseModelCopyWith<_$_ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
