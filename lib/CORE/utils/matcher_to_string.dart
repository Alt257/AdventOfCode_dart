import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';

extension MatcherToString on Matcher {

  static String describe(Function matcher) =>
      matcher == equals ? '==' :
      matcher == equalsIgnoringCase ? '==' :
      matcher == equalsIgnoringWhitespace ? '==' :
      matcher == isNot ? '!=' :
      matcher == greaterThan ? '>' :
      matcher == greaterThanOrEqualTo ? '>=' :
      matcher == lessThan ? '<' :
      matcher == lessThanOrEqualTo ? '<=' :
      matcher.toString();
}
