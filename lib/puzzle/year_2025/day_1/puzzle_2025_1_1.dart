import 'package:advent_of_code__dart/entity/puzzle.dart';

final class Puzzle_2025_1_1 extends Puzzle {
  Puzzle_2025_1_1(): super(year: 2025, day: 1, part: 1);

  @override
  String get exampleAnswer => '3';

  @override
  String get exampleInput =>
      'L68\n'
      'L30\n'
      'R48\n'
      'L5\n'
      'R60\n'
      'L55\n'
      'L1\n'
      'L99\n'
      'R14\n'
      'L82\n'
  ;

  @override
  String solve(String input) {
    const startingPosition = 50;
    const min = 0;
    const max = 99;
    const range = max - min + 1;
    
    final allMoves = toListOfDialMove(input);
    var position = startingPosition;
    var passedBy0Counter = 0;

    for (final move in allMoves) {
      if (move.direction == Direction.left) {
        position -= move.distance;
        if (position < min) {
          position += range;
          passedBy0Counter++;
        }

      } else { // move.direction == Direction.right
        position += move.distance;
        if (position > max) {
          position -= range;
          passedBy0Counter++;
        }
      }
    }

    return '$passedBy0Counter';
  }

}

enum Direction { left, right }

final class DialMove {
  DialMove(this.direction, this.distance);
  factory DialMove.fromString(String input) => DialMove(
    parseDirection(input),
    parseDistance(input),
  );

  final Direction direction;
  final int distance;
}


List<DialMove> toListOfDialMove(String input) => input
    .split('\n')
    .where((line) => line.isNotEmpty)
    .map((line) =>
    DialMove.fromString(line)
).toList();

Direction parseDirection(String input) =>
    input.startsWith('L') ? Direction.left : Direction.right;

int parseDistance(String input) =>
    int.parse(input.substring(1));