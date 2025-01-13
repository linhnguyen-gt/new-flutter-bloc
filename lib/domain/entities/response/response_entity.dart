import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_entity.freezed.dart';

@freezed
class ResponseEntity with _$ResponseEntity {
  const factory ResponseEntity({
    @JsonKey(name: 'ID State') String? idState,
    @JsonKey(name: 'State') String? state,
    @JsonKey(name: 'ID Year') int? idYear,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'Population') int? population,
    @JsonKey(name: 'Slug State') String? slugState,
  }) = _ResponseEntity;
}
