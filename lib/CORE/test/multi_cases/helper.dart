
import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';

export 'test_case.dart';
export 'test_input.dart';

/// Test a function on a list of test cases.
/// [function] is the function to test.
/// [testCases] is the list of test cases.
/// [caseDescription] is the description of the test.
/// You can use tags like [input] and [expect] in the description.
/// They will be replaced by the values of the test cases.
///
/// Tag list:
/// - [input]: the input of the test case
/// - [expect]: the expected output of the test case
///
/// Example:
/// ```dart
/// testOnCases(
///   parseDirection,
///   [
///     TestCase('L68', expect: Direction.left),
///     TestCase('L642', expect: Direction.left),
///     TestCase('R4', expect: Direction.right),
///     TestCase('R48', expect: Direction.right),
///   ],
///   '[input] - direction must be [expect]',
/// );
///

void testOnCases(Function function,
    List<TestCase> testCases, [
    String caseDescription = '[input] - must be [expect]',
]) {
  // Extract name from "Closure: ... from Function 'parseDirection': ..."
  final match = RegExp(r"'(.*?)'").firstMatch(function.toString());
  final functionName = match?.group(1) ?? 'Unknown Function';
  group('$functionName(...)', () {
    for (final testCase in testCases) {
      test(caseDescription
          .replaceAll('[input]', testCase.input.toString())
          .replaceAll('[expect]', testCase.expect.toString()), () {
        expect(Function.apply(function, testCase.inputList), testCase.expect);
      });
    }
  });
}
