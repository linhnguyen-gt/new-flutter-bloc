import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    required String idNation,
    required String nation,
    required int idYear,
    required String year,
    required int population,
    required String slugNation,
  }) = _ResponseModel;

  static ResponseModel fromJson(Map<String, dynamic> json) => ResponseModel(
        idNation: json['ID Nation'],
        nation: json['Nation'],
        idYear: json['ID Year'],
        year: json['Year'],
        population: json['Population'],
        slugNation: json['Slug Nation'],
      );

  static List<ResponseModel> getListFormJson(Map<String, dynamic> json) {
    final listData = json['data'];
    final responseList = <ResponseModel>[];
    for (var item in listData) {
      responseList.add(ResponseModel.fromJson(item));
    }
    return responseList;
  }
}
