import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_2/puzzle_2025_2_1.dart';

void main() {

  runPuzzleTests(Puzzle_2025_2_1(),

    tests: (puzzle) {
      test('isSame()', () {
        expect(isSame('a', 'a'), true);
        expect(isSame('a', 'b'), false);
        expect(isSame('10', '10'), true);
      });

      group('isValidID()', () {
        final testCases = [
          TestCase('11', expect: false),
          TestCase('99', expect: false),
          TestCase('1010', expect: false),
          TestCase('123123', expect: false),
          TestCase('123124', expect: true),
        ];
        for (final testCase in testCases) {
          test(testCase.toString(), () {
            expect(isValidID(testCase.input), testCase.expect);
          });
        }
      });

    }
  );
}
