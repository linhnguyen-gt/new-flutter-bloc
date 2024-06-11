import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_URL') // the .env variable.
  static const String apiUrl = _Env.apiUrl;
}
