import 'package:advent_of_code__dart/CORE/test/run_tests.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_2.dart';

void main() {
  runPuzzleTests(Puzzle_2025_1_2(),
    customInput:
            'L323\n'
            'D421\n',

    tests: (puzzle) {
    },

    hints: [
      Hint(greaterThan, 1086),
      Hint(lessThan, 6294),
      Hint(isNot, 6175),
    ],
  );
}
