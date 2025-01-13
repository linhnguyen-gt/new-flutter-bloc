import 'package:injectable/injectable.dart';

import '../../models/auth/auth_model.dart';

@injectable
class AuthRemoteDataSource {
  Future<AuthModel> login(String email, String password) async {
    return AuthModel.fromJson({'token': 'token', 'userId': '1'});
  }

  Future<AuthModel> register(String email, String password) async {
    return AuthModel.fromJson({'token': 'token', 'userId': '1'});
  }
}
