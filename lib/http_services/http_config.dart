class HttpClientBaseConfig<M extends ApiMethod, P, B> {
  final M method;
  final P? params;
  final B? body;

  HttpClientBaseConfig({required this.method, this.params, this.body});
}

class HttpClientConfig<B, P, M extends ApiMethod> {
  final HttpClientBaseConfig<M, P, B> config;

  HttpClientConfig(this.config);

  factory HttpClientConfig.get({P? params}) {
    return HttpClientConfig<dynamic, P, ApiMethod>(
      HttpClientBaseConfig<ApiMethod, P, dynamic>(
        method: ApiMethod.get,
        params: params,
      ),
    ) as HttpClientConfig<B, P, M>;
  }

  factory HttpClientConfig.delete(P params) {
    return HttpClientConfig<dynamic, P, ApiMethod>(
      HttpClientBaseConfig<ApiMethod, P, dynamic>(
        method: ApiMethod.delete,
        params: params,
      ),
    ) as HttpClientConfig<B, P, M>;
  }

  factory HttpClientConfig.post(B body) {
    return HttpClientConfig<dynamic, P, ApiMethod>(
      HttpClientBaseConfig<ApiMethod, P, dynamic>(
        method: ApiMethod.post,
        body: body,
      ),
    ) as HttpClientConfig<B, P, M>;
  }

  factory HttpClientConfig.put(B body) {
    return HttpClientConfig<dynamic, P, ApiMethod>(
      HttpClientBaseConfig<ApiMethod, P, dynamic>(
        method: ApiMethod.put,
        body: body,
      ),
    ) as HttpClientConfig<B, P, M>;
  }

  factory HttpClientConfig.patch(B body) {
    return HttpClientConfig<dynamic, P, ApiMethod>(
      HttpClientBaseConfig<ApiMethod, P, dynamic>(
        method: ApiMethod.patch,
        body: body,
      ),
    ) as HttpClientConfig<B, P, M>;
  }
}

enum ApiMethod { get, post, put, patch, delete }
