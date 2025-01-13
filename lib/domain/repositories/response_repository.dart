import '../../data/models/response/response_model.dart';
import '../entities/response/response_entity.dart';

abstract class ResponseRepository {
  Future<List<ResponseEntity>> getResponse(ResponseParamModel param);
}
