class HttpClientBaseConfig<M extends ApiMethod, P, B> {
  final M method;
  final P? params;
  final B? body;

  HttpClientBaseConfig({required this.method, this.params, this.body});
}

class HttpClientConfig<M extends ApiMethod, P, B> {
  final HttpClientBaseConfig<M, P, B> config;

  HttpClientConfig(this.config);

  factory HttpClientConfig.get({P? params}) {
    return HttpClientConfig<M, P, dynamic>(
      HttpClientBaseConfig<M, P, dynamic>(
        method: ApiMethod.get as M,
        params: params,
      ),
    ) as HttpClientConfig<M, P, B>;
  }

  factory HttpClientConfig.delete({P? params}) {
    return HttpClientConfig<M, P, dynamic>(
      HttpClientBaseConfig<M, P, dynamic>(
        method: ApiMethod.delete as M,
        params: params,
      ),
    ) as HttpClientConfig<M, P, B>;
  }

  factory HttpClientConfig.post({B? body}) {
    return HttpClientConfig<M, dynamic, B>(
      HttpClientBaseConfig<M, dynamic, B>(
        method: ApiMethod.post as M,
        body: body,
      ),
    ) as HttpClientConfig<M, P, B>;
  }

  factory HttpClientConfig.put({B? body}) {
    return HttpClientConfig<M, dynamic, B>(
      HttpClientBaseConfig<M, dynamic, B>(
        method: ApiMethod.put as M,
        body: body,
      ),
    ) as HttpClientConfig<M, P, B>;
  }

  factory HttpClientConfig.patch({B? body}) {
    return HttpClientConfig<M, dynamic, B>(
      HttpClientBaseConfig<M, dynamic, B>(
        method: ApiMethod.patch as M,
        body: body,
      ),
    ) as HttpClientConfig<M, P, B>;
  }
}

enum ApiMethod { get, post, put, patch, delete }
