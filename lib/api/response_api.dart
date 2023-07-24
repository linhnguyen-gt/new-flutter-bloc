import 'package:new_flutter_bloc/http_services/api_problem.dart';
import 'package:new_flutter_bloc/http_services/base_response.dart';
import 'package:new_flutter_bloc/http_services/http_client.dart';
import 'package:new_flutter_bloc/http_services/http_config.dart';
import 'package:new_flutter_bloc/model/response_model.dart';

Future<BaseResponse<List<ResponseModel>>?> responseApi() async {
  var params = <String, dynamic>{
    'drilldowns': 'Nation',
    'measures': 'Population',
  };
  final response = await HttpClient.getInstance().request(
    'data',
    HttpClientConfig.get(params: params),
  );

  if (!response.ok) return await apiProblem(response);

  return BaseResponse<List<ResponseModel>>(
    ok: response.ok,
    data: ResponseModel.getListFormJson(response.data!),
  );
}
