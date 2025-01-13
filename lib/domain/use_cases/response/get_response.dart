import 'package:injectable/injectable.dart';

import '../../../data/models/response/response_model.dart';
import '../../entities/response/response_entity.dart';
import '../../repositories/response_repository.dart';

@injectable
class GetResponse {
  final ResponseRepository repository;

  GetResponse(this.repository);

  Future<List<ResponseEntity>> call(ResponseParamModel param) async {
    return await repository.getResponse(param);
  }
}
