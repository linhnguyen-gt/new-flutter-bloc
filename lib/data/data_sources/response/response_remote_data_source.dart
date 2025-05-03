import 'package:injectable/injectable.dart';

import '../../../base/base_response.dart';
import '../../../services/http_services/api_problem.dart';
import '../../../services/http_services/config/http_config.dart';
import '../../../services/http_services/http_client.dart';
import '../../models/response/response_model.dart';

@injectable
class ResponseRemoteDataSource {
  Future<BaseResponse<List<ResponseModel>>> responseApi(
      ResponseParamModel param) async {
    final response = await HttpClient.getInstance().request(
      'data',
      getHttpClientConfig(params: param.toJson()),
    );

    if (!response.ok) {
      return apiProblem(response);
    }

    return BaseResponse(
      ok: response.ok,
      data: ResponseModel.getListFormJson(response.data!),
    );
  }
}
