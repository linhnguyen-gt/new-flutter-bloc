import 'package:injectable/injectable.dart';

import '../../entities/auth/auth_entity.dart';
import '../../repositories/auth_repository.dart';

@injectable
class Register {
  final AuthRepository repository;

  Register(this.repository);

  Future<AuthEntity> call(String email, String password) async {
    return await repository.register(email, password);
  }
}
