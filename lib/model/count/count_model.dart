import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_model.freezed.dart';

@freezed
class CountModel with _$CountModel {
  const factory CountModel({
    required int count,
  }) = _CountModel;
}
