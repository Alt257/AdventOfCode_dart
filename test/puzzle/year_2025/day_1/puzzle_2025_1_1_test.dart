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
          final testData = <TestData>[
            TestData('L68', expect: Direction.left),
            TestData('L642', expect: Direction.left),
            TestData('R4', expect: Direction.right),
            TestData('R48', expect: Direction.right),
          ];

          for (final data in testData) {
            test('${data.input}: direction must be [${data.expect}]', () {
              final direction = parseDirection(data.input);
              expect(direction, data.expect);
            });
          }
        });


        group('parseDistance_test', () {
          final testData = <TestData>[
            TestData('L5', expect: 5),
            TestData('L68', expect: 68),
            TestData('R4', expect: 4),
            TestData('R688', expect: 688),
          ];

          for (final data in testData) {
            test('${data.input}: distance must be [${data.expect}]', () {
              final distance = parseDistance(data.input);
              expect(distance, data.expect);
            });
          }
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
