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

    return '3';
  }

}

enum Direction { left, right }
