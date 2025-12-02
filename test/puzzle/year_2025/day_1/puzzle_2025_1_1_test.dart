import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_1.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../utils.dart';

Future<void> main() async {
  runPuzzleTests(Puzzle_2025_1_1(), (puzzle) {

    group('parseDirection_test', () {
      test('parseDirection_L_test', () {
        final direction = parseDirection('L68');
        expect(direction, Direction.left);
      });

      test('parseDirection_R_test', () {
        final direction = parseDirection('R4');
        expect(direction, Direction.right);
      });

      test('parseDirection_R_test', () {
        final direction = parseDirection('R48');
        expect(direction, Direction.right);
      });
    });

    group('parseDistance_test', () {
      test('parseDistance_5_test', () {
        final distance = parseDistance('L5');
        expect(distance, 5);
      });

      test('parseDistance_68_test', () {
        final distance = parseDistance('L68');
        expect(distance, 68);
      });

      test('parseDistance_48_test', () {
        final distance = parseDistance('R48');
        expect(distance, 48);
      });
    });

    test('toListOfDialMove_test', () {
      final list = toListOfDialMove(puzzle.exampleInput);
      expect(list, isA<List<DialMove>>());
      expect(list.length, 10);
    });

    group('Wrong answers', () {
      test('290 is too low', () {
        expect(puzzle.answer > 290, isTrue);
      });
    });

  });
}
