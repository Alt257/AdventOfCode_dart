import 'package:advent_of_code__dart/entity/puzzle.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_1.dart';

final class Puzzle_2025_1_2 extends Puzzle {
  Puzzle_2025_1_2(): super(year: 2025, day: 1, part: 2);

  @override
  get exampleAnswer => 6;

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
  solve(String input) {
    final allMoves = toListOfDialMove(input);
    var position = startingPosition;
    var pointAt0Counter = 0;

    for (final move in allMoves) {

      final sign = move.direction == Direction.left ? -1 : 1;
      final signedDistance = move.distance * sign;

      final stopAtO = (position + signedDistance) % range == 0;

      if (stopAtO) {
        pointAt0Counter++;
      }

      // position = makeMove(position, move);
      if (move.direction == Direction.left) {
        position -= move.distance;
        while (position < min) {
          position += range;
          if(position != 0) pointAt0Counter++;
        }

      } else { // move.direction == Direction.right
        position += move.distance;
        while (position > max) {
          position -= range;
          if(position != 0) pointAt0Counter++;
        }
      }
    }

    return pointAt0Counter;
  }
  
}
