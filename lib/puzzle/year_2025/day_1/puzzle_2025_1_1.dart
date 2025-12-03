import 'package:advent_of_code__dart/entity/puzzle.dart';

final class Puzzle_2025_1_1 extends Puzzle {
  Puzzle_2025_1_1(): super(year: 2025, day: 1, part: 1);

  @override
  dynamic get exampleAnswer => 3;

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
  dynamic solve(String input) {

    final allMoves = toListOfDialMove(input);
    var position = startingPosition;
    var pointAt0Counter = 0;

    for (final move in allMoves) {
      position = makeMove(position, move);

      if (position == 0) {
        pointAt0Counter++;
      }
    }

    return pointAt0Counter;
  }

}

enum Direction { left, right }
const startingPosition = 50;
const min = 0;
const max = 99;
const range = max - min + 1;

final class DialMove {
  DialMove(this.direction, this.distance);
  factory DialMove.fromString(String input) => DialMove(
    parseDirection(input),
    parseDistance(input),
  );

  final Direction direction;
  final int distance;
  @override
  toString() => '${direction == Direction.left ? 'L' : 'R'}$distance';
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

int makeMove(int position, DialMove move) {
  if (move.direction == Direction.left) {
    position -= move.distance;
    while (position < min) {
      position += range;
    }

  } else { // move.direction == Direction.right
    position += move.distance;
    while (position > max) {
      position -= range;
    }
  }

  return position;
}