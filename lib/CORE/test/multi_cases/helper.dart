
import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';

export 'test_case.dart';
export 'test_input.dart';

/// Test a function on a list of test cases.
/// [function] is the function to test.
/// [description] is the description of the test.
/// You can use tags like [input] and [expect] in the description.
/// They will be replaced by the values of the test cases.
/// [testCases] is the list of test cases.
///
/// Example:
/// ```dart
/// testOnCases(
///   parseDirection,
///   '[input] - direction must be [expect]',
///   [
///     TestCase('L68', expect: Direction.left),
///     TestCase('L642', expect: Direction.left),
///     TestCase('R4', expect: Direction.right),
///     TestCase('R48', expect: Direction.right),
///   ]
/// );
///

void testOnCases(Function function, String description, List<TestCase> testCases) {
  for (final testCase in testCases) {
    test(description
        .replaceAll('[input]', testCase.input.toString())
        .replaceAll('[expect]', testCase.expect.toString()), () {
      expect(Function.apply(function, testCase.input), testCase.expect);
    });
  }
}
