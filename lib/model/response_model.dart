class ResponseModel {
  final String idNation;
  final String nation;
  final int idYear;
  final String year;
  final int population;
  final String slugNation;

  ResponseModel({
    required this.idNation,
    required this.nation,
    required this.idYear,
    required this.year,
    required this.population,
    required this.slugNation,
  });

  static ResponseModel fromJson(Map<String, dynamic> json) => ResponseModel(
        idNation: json["ID Nation"],
        nation: json["Nation"],
        idYear: json["ID Year"],
        year: json["Year"],
        population: json["Population"],
        slugNation: json["Slug Nation"],
      );

  static List<ResponseModel> getListFormJson(Map<String, dynamic> json) {
    var listData = json['data'];

    List<ResponseModel> responseList = [];
    for (var item in listData) {
      responseList.add(ResponseModel.fromJson(item));
    }
    return responseList;
  }
}
