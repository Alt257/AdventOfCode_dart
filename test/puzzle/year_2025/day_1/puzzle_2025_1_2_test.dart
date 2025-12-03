import 'package:advent_of_code__dart/CORE/test/utils.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_2.dart';

void main() {
  runPuzzleTests(Puzzle_2025_1_2(), runCustomTests: (puzzle) {

    group('known values', () {

      test('should be greater than part 1 answer', () {
        expect(puzzle.answer, greaterThan(1086));
      });

      test('should be less than 6294', () {
        expect(puzzle.answer, lessThan(6294));
      });

    });


  });
}