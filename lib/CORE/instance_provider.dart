sealed class InstanceProvider {

  static final _interceptors = <String, dynamic>{};

  static T getInstance<T>(T Function() constructor) {
    final key = T.toString();
    if(!_interceptors.containsKey(key)) {
      _interceptors.addAll({key: constructor()});
    }
    return _interceptors[key]!;
  }
}