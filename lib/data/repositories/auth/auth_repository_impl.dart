import 'package:injectable/injectable.dart';

import '../../../domain/entities/auth/auth_entity.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../data_sources/auth/auth_remote_data_source.dart';
import '../../models/auth/auth_model.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<AuthEntity> login(String email, String password) async {
    final result = await remoteDataSource.login(email, password);
    return result.toEntity();
  }

  @override
  Future<AuthEntity> register(String email, String password) async {
    final result = await remoteDataSource.register(email, password);
    return result.toEntity();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }
}
