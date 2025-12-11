
import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';

export 'test_case.dart';
export 'test_input.dart';

/// Test a function on a list of test cases.
/// 
/// [function] is the function to test.
/// [testCases] is the list of test cases.
/// [caseDescription] is the description of the test.
/// You can use tags like `[input]` and `[expect]` in the description.
/// They will be replaced by the values of the test cases.
///
/// Tag list:
/// - `[input]`: the input of the test case
/// - `[n]`: if the input is a list,
///   it will be replaced by the n-th element of the list
///   for example, if the input is ['a', 'b', 'c'],
///   `[1]` will be replaced by ['a']
///   `[2]` will be replaced by ['b']
///   `[3]` will be replaced by ['c']
/// - `[expect]`: the expected output of the test case
/// - `[expect?value1:value2]`: if the expected output is true,
///   it will be replaced by value1, otherwise by value2
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
            .replaceAll('[expect]', testCase.expect.toString())

            // Replace [n] with the n-th element of the input list
            .replaceAllMapped(RegExp(r'\[(\d+)\]'), (match) {
                final index = int.parse(match.group(1)!) - 1;
                return '[${testCase.inputList[index]}]';
            })
            // Replace [expect?value1:value2] with value1 if expect is true, value2 otherwise
            .replaceAllMapped(RegExp(r'\[expect\?(.*?):(.*?)\]'), (match) {
                return testCase.expect ? '${match.group(1)}' : '${match.group(2)}';
            })
        , () {
        expect(Function.apply(function, testCase.inputList), testCase.expect);
      });
    }
  });
}
