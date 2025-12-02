import 'package:dio/dio.dart';

abstract class DioImpl {
  final _httpClient = Dio();
  final String url;
  final List<Interceptor> globalInterceptors;

  DioImpl({
    required this.url,
    this.globalInterceptors = const <Interceptor>[],
  });

  Future<Response<T>> get<T>(String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    List<Interceptor> interceptors = const <Interceptor>[],
    Map<String, dynamic>? headers,
    String? contentType,
    Map<String, dynamic>? extra,
    bool? followRedirects,
    // listFormat,
    int? maxRedirects,
    // String? method,
    bool? persistentConnection,
    bool? preserveHeaderCase,
    bool? receiveDataWhenStatusError,
    Duration? receiveTimeout,
    // FutureOr<List<int>> Function()? requestEncoder,
    // responseDecoder,
    // responseType,
    Duration? sendTimeout,
    bool Function(int?)? validateStatus,
    // cancelToken,
    Function(int, int)? onReceiveProgress,
  }) {
    _httpClient.interceptors.addAll([
      ...globalInterceptors,
      ...interceptors,
    ]);
    final response = _httpClient.get<T>('$url$path',
      data: data,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        contentType: contentType,
        extra: extra,
        followRedirects: followRedirects,
        // listFormat: ListFormat.,
        maxRedirects: maxRedirects,
        // method: method,
        persistentConnection: persistentConnection,
        preserveHeaderCase: preserveHeaderCase,
        receiveDataWhenStatusError: receiveDataWhenStatusError,
        receiveTimeout: receiveTimeout,
        // requestEncoder: requestEncoder,
        // responseDecoder: responseDecoder,
        // responseType: responseType,
        sendTimeout: sendTimeout,
        validateStatus: validateStatus,
      ),
      // cancelToken: CancelToken(),
      onReceiveProgress: onReceiveProgress,
    );
    _httpClient.interceptors.clear();
    return response;
  }

  post(String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    List<Interceptor> interceptors = const <Interceptor>[],
    Map<String, dynamic>? headers,
    String? contentType,
    Map<String, dynamic>? extra,
    bool? followRedirects,
    // listFormat,
    int? maxRedirects,
    // String? method,
    bool? persistentConnection,
    bool? preserveHeaderCase,
    bool? receiveDataWhenStatusError,
    Duration? receiveTimeout,
    // FutureOr<List<int>> Function()? requestEncoder,
    // responseDecoder,
    // responseType,
    Duration? sendTimeout,
    bool Function(int?)? validateStatus,
    // cancelToken,
    Function(int, int)? onReceiveProgress,
  }) async {
    _httpClient.interceptors.addAll([
      ...globalInterceptors,
      ...interceptors,
    ]);
    final response = await _httpClient.post('$url$path',
      data: data,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        contentType: contentType,
        extra: extra,
        followRedirects: followRedirects,
        // listFormat: ListFormat.,
        maxRedirects: maxRedirects,
        // method: method,
        persistentConnection: persistentConnection,
        preserveHeaderCase: preserveHeaderCase,
        receiveDataWhenStatusError: receiveDataWhenStatusError,
        receiveTimeout: receiveTimeout,
        // requestEncoder: requestEncoder,
        // responseDecoder: responseDecoder,
        // responseType: responseType,
        sendTimeout: sendTimeout,
        validateStatus: validateStatus,
      ),
      // cancelToken: CancelToken(),
      onReceiveProgress: onReceiveProgress,
    );
    _httpClient.interceptors.clear();
    return response;
  }
}