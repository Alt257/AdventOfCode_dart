import 'dio_impl.dart';

abstract class HttpDataProvider extends DioImpl {
  HttpDataProvider({required super.url, super.globalInterceptors});
}