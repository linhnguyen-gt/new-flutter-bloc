import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/response/response_entity.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseParamModel with _$ResponseParamModel {
  const factory ResponseParamModel({
    String? drilldowns,
    String? measures,
    String? year,
  }) = _ResponseParamModel;

  factory ResponseParamModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseParamModelFromJson(json);
}

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    @JsonKey(name: 'ID State') String? idState,
    @JsonKey(name: 'State') String? state,
    @JsonKey(name: 'ID Year') int? idYear,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'Population') int? population,
    @JsonKey(name: 'Slug State') String? slugState,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  static List<ResponseModel> getListFormJson(Map<String, dynamic> json) {
    final listData = json['data'];
    final responseList = <ResponseModel>[];
    for (var item in listData) {
      responseList.add(ResponseModel.fromJson(item));
    }
    return responseList;
  }
}

extension ResponseModelX on ResponseModel {
  ResponseEntity toEntity() {
    return ResponseEntity(
      idState: idState,
      state: state,
      idYear: idYear,
      year: year,
      population: population,
      slugState: slugState,
    );
  }
}
