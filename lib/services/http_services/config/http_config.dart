abstract class HttpClientConfig<M extends ApiMethod, P, B> {
  M get method;
  Map<String, dynamic>? get params;
  B? get body;
}

class GetHttpClientConfig<P, B> implements HttpClientConfig<ApiMethod, P, B> {
  @override
  final ApiMethod method = ApiMethod.get;
  @override
  final Map<String, dynamic>? params;
  @override
  B? get body => null;

  GetHttpClientConfig({this.params});
}

class PostHttpClientConfig<P, B> implements HttpClientConfig<ApiMethod, P, B> {
  @override
  final ApiMethod method = ApiMethod.post;
  @override
  Map<String, dynamic>? get params => null;
  @override
  final B? body;

  PostHttpClientConfig({this.body});
}

class PutHttpClientConfig<P, B> implements HttpClientConfig<ApiMethod, P, B> {
  @override
  final ApiMethod method = ApiMethod.put;
  @override
  Map<String, dynamic>? get params => null;
  @override
  final B? body;

  PutHttpClientConfig({this.body});
}

class PatchHttpClientConfig<P, B> implements HttpClientConfig<ApiMethod, P, B> {
  @override
  final ApiMethod method = ApiMethod.patch;
  @override
  Map<String, dynamic>? get params => null;
  @override
  final B? body;

  PatchHttpClientConfig({this.body});
}

class DeleteHttpClientConfig<P, B>
    implements HttpClientConfig<ApiMethod, P, B> {
  @override
  final ApiMethod method = ApiMethod.delete;
  @override
  final Map<String, dynamic>? params;
  @override
  B? get body => null;

  DeleteHttpClientConfig({this.params});
}

HttpClientConfig<ApiMethod, P, B> getHttpClientConfig<P, B>(
    {Map<String, dynamic>? params}) {
  return GetHttpClientConfig(params: params);
}

HttpClientConfig<ApiMethod, P, B> postHttpClientConfig<P, B>({B? body}) {
  return PostHttpClientConfig(body: body);
}

HttpClientConfig<ApiMethod, P, B> putHttpClientConfig<P, B>({B? body}) {
  return PutHttpClientConfig(body: body);
}

HttpClientConfig<ApiMethod, P, B> patchHttpClientConfig<P, B>({B? body}) {
  return PatchHttpClientConfig(body: body);
}

HttpClientConfig<ApiMethod, P, B> deleteHttpClientConfig<P, B>(
    {Map<String, dynamic>? params}) {
  return DeleteHttpClientConfig(params: params);
}

enum ApiMethod { get, post, put, patch, delete }
