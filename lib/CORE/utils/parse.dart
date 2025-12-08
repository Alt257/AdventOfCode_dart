abstract class Parse {

  static T to<T extends Object>(String value) => (
      T == String ? value :
      T == int ? int.parse(value) :
      T == double ? double.parse(value) :
      T == bool ? value.toLowerCase() == "true" :
      throw ArgumentError("Unsuported value type")
  ) as T;
}