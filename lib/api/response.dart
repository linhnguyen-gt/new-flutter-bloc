import 'package:new_flutter_bloc/http_services/api_problem.dart';
import 'package:new_flutter_bloc/http_services/http_client.dart';
import 'package:new_flutter_bloc/http_services/http_config.dart';

Future response(dynamic params) async {
  final res = await HttpClient.getInstance()
      .request('endpoint', HttpClientConfig.post(params));

  if (!res.ok) return apiProblem(res);
}
