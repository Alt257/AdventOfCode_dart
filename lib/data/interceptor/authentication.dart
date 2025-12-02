import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String token;
  const AuthInterceptor(this.token);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Cookie'] = token;
    handler.next(options);
  }
}