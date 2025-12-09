
import 'package:advent_of_code__dart/CORE/test/run_tests.dart';
import 'package:advent_of_code__dart/CORE/utils/matcher_to_string.dart';

final class WrongAnswer {
  WrongAnswer(this.matcher, this.value, {
    String? description,
  }): description = description ?? '${MatcherToString.describe(matcher)} $value';

  final dynamic value;
  final String description;
  final Matcher Function(Object) matcher;

  @override
  String toString() => description;
}
