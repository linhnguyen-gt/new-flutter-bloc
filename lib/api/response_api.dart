import 'package:new_flutter_bloc/http_services/api_problem.dart';
import 'package:new_flutter_bloc/http_services/base_response.dart';
import 'package:new_flutter_bloc/http_services/http_client.dart';
import 'package:new_flutter_bloc/http_services/http_config.dart';
import 'package:new_flutter_bloc/model/response_model.dart';

Future<BaseResponse<List<ResponseModel>>?> responseApi() async {
  Map<String, dynamic> params = {
    'drilldowns': 'Nation',
    'measures': 'Population',
  };
  final res = await HttpClient.getInstance().request(
    'data',
    HttpClientConfig.get(params: params),
  );

  if (!res.ok) return await apiProblem(res);

  return BaseResponse<List<ResponseModel>>(
    ok: res.ok,
    data: ResponseModel.getListFormJson(res.data!),
  );
}
