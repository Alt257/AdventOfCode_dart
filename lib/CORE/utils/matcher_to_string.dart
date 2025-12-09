import 'package:advent_of_code__dart/CORE/test/run_tests.dart';

extension MatcherToString on Matcher {

  static String describe(Function matcher) =>
      matcher == equals ? '==' :
      matcher == equalsIgnoringCase ? '==' :
      matcher == equalsIgnoringWhitespace ? '==' :
      // matcher == notEquals ? '!=' :
      matcher == greaterThan ? '>' :
      matcher == greaterThanOrEqualTo ? '>=' :
      matcher == lessThan ? '<' :
      matcher == lessThanOrEqualTo ? '<=' :
      matcher.toString();
}
