import 'package:advent_of_code__dart/CORE/test/run_tests.dart';
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

      tests: (puzzle) {

        group('parseDirection_test', () {

          final input1_1 = 'L68';
          test('$input1_1: direction must be \'left\'', () {
            final direction = parseDirection(input1_1);
            expect(direction, Direction.left);
          });

          final input1_2 = 'L642';
          test('$input1_2: direction must be \'left\'', () {
            final direction = parseDirection(input1_2);
            expect(direction, Direction.left);
          });

          final input1_3 = 'R4';
          test('$input1_3: direction must be \'right\'', () {
            final direction = parseDirection(input1_3);
            expect(direction, Direction.right);
          });

          final input1_4 = 'R48';
          test('$input1_4: direction must be \'right\'', () {
            final direction = parseDirection(input1_4);
            expect(direction, Direction.right);
          });

        });


        group('parseDistance_test', () {

          final input2_1 = 'L5';
          test('$input2_1: distance must be 5', () {
            final distance = parseDistance(input2_1);
            expect(distance, 5);
          });

          final input2_2 = 'L68';
          test('$input2_2: distance must be 68', () {
            final distance = parseDistance(input2_2);
            expect(distance, 68);
          });

          final input2_3 = 'R48';
          test('$input2_3: distance must be 48', () {
            final distance = parseDistance(input2_3);
            expect(distance, 48);
          });

        });


        test('toListOfDialMove_test', () {
          final list = toListOfDialMove(puzzle.exampleInput);
          expect(list, isA<List<DialMove>>());
          expect(list.length, 10);
        });


        group('makeMove_test()', () {
          DialMove move;

          move = DialMove(Direction.left, 2);
          var initialPosition = 1;
          test('$move from $initialPosition: position must be 99', () {
            final position = makeMove(initialPosition, move);
            expect(position, 99);
          });
        });

      },

      hints: [
        Hint(greaterThan, 290, description: '290 is too low'),
        Hint(lessThan, 99999),
      ]
  );
}
