import '../entities/auth/auth_entity.dart';

abstract class AuthRepository {
  Future<AuthEntity> login(String email, String password);

  Future<AuthEntity> register(String email, String password);

  Future<void> logout();
}
