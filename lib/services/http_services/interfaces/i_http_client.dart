import '../../../base/base_response.dart';
import '../config/http_config.dart';

abstract class IHttpClient {
  Future<BaseResponse<Map<String, dynamic>>>
      request<Method extends ApiMethod, Body, Params>(
    String endpoint,
    HttpClientConfig<Method, Params, Body> apiConfig,
  );

  void setToken(String token);

  void clearToken();
}
