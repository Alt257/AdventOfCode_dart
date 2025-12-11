import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_2/puzzle_2025_2_1.dart';

void main() {

  runPuzzleTests(Puzzle_2025_2_1(),

    tests: (puzzle) {

      testOnCases(isSame, [
        TestCase(['a', 'a'], expect: true),
        TestCase(['a', 'b'], expect: false),
        TestCase(['10', '10'], expect: true),
      ], '[1] and [2] must be [expect?:NOT ]equals');

      testOnCases(isAValidID, [
        TestCase('11', expect: false),
        TestCase('99', expect: false),
        TestCase('101', expect: true),
        TestCase('1010', expect: false),
        TestCase('123123', expect: false),
        TestCase('123124', expect: true),
      ]);

    }
  );
}
