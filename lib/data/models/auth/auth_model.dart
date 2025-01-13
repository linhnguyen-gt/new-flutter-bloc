import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/auth/auth_entity.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String token,
    required String userId,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

extension AuthModelX on AuthModel {
  AuthEntity toEntity() {
    return AuthEntity(token: token, userId: userId);
  }
}
