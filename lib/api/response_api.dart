import '../base/base_response.dart';
import '../http_services/api_problem.dart';
import '../http_services/http_client.dart';
import '../http_services/http_config.dart';
import '../model/response/response_model.dart';

Future<BaseResponse<List<ResponseModel>>> responseApi(
    ResponseParamModel param) async {
  final response = await HttpClient.getInstance().request(
    'data',
    HttpClientConfig.get(params: param.toJson()),
  );

  if (!response.ok) {
    return await apiProblem(response);
  }

  return BaseResponse<List<ResponseModel>>(
    ok: response.ok,
    data: ResponseModel.getListFormJson(response.data!),
  );
}
