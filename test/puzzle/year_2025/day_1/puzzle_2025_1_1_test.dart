import 'package:advent_of_code__dart/CORE/test/utils.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_1.dart';

/// ****************************************************************************
///
///            Example: Advent of Code 2025 - Day 1 - Part 1
///
///*****************************************************************************
/// This example shows how to use the test/puzzle/utils.dart
/// file to run tests on a puzzle.
///*****************************************************************************

Future<void> main() async {
  runPuzzleTests(Puzzle_2025_1_1(),

      /// optional [customInput] if you want to test with your own input
      /// and [customAnswer] if you want to test with your own answer
      /// if you don't provide both, the tests will not expect a value
      customInput:
          'L50\n'
          'L150\n'
          'L50\n'
          'L900\n',
      runCustomTests: (puzzle) {

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

        group('makeMove_test()', () {
          test('makeMove_0_L1_test', () {
            final position = makeMove(0, DialMove(Direction.left, 1));
            expect(position, 99);
          });
        });

      },

      wrongAnswers: [
        WrongAnswer(answer: 290, queue: 'is too low', matcher: greaterThan(290)),
        WrongAnswer(answer: 99999, queue: 'is too high', matcher: lessThan(99999)),
      ]
  );
}
