import 'package:injectable/injectable.dart';

import '../../entities/auth/auth_entity.dart';
import '../../repositories/auth_repository.dart';

@injectable
class Login {
  final AuthRepository repository;

  Login(this.repository);

  Future<AuthEntity> call(String email, String password) async {
    return await repository.login(email, password);
  }
}
