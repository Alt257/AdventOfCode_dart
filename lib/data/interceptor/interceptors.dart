
import 'package:advent_of_code__dart/CORE/environment.dart';

import '../../CORE/instance_provider.dart';
import 'authentication.dart';

sealed class Interceptors {

  static get authentication => InstanceProvider.getInstance(() =>
      AuthInterceptor(Environment.read('COOCKIE_SESSION'))
  );

}
