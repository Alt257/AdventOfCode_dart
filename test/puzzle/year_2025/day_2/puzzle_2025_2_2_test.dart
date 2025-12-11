import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_2/puzzle_2025_2_2.dart';

void main() {
  runPuzzleTests(Puzzle_2025_2_2(),

    hints: [
      Hint(greaterThan, 15873079081),
    ],

    tests: (puzzle) {

      testOnCases(isNotAValidID, [
        TestCase('11', expect: true),
        TestCase('99', expect: true),
        TestCase('12341234', expect: true),
        TestCase('123123123', expect: true),
        TestCase('1212121212', expect: true),
        TestCase('1111111', expect: true),
        TestCase('1111112', expect: false),
        TestCase('123', expect: false),
        TestCase('2002', expect: false),
      ]);

      testOnCases(isRepetedPattern, [
        TestCase(['12', '121212'], expect: true),
        TestCase(['12', '1212121'], expect: false),
        TestCase(['1', '111112'], expect: false),
        TestCase(['11', '11112'], expect: false),
        TestCase(['111', '1112'], expect: false),
        TestCase(['1111', '112'], expect: false),
        TestCase(['11111', '12'], expect: false),
        TestCase(['111111', '2'], expect: false),
      ]);

    },
  );
}
