import 'package:advent_of_code__dart/entity/puzzle.dart';

final class Puzzle_2025_1_1 extends Puzzle {
  Puzzle_2025_1_1(): super(year: 2025, day: 1, part: 1);

  @override
  String get exampleAnswer => '3';

  @override
  String get exampleInput =>
      'L68'
      'L30'
      'R48'
      'L5'
      'R60'
      'L55'
      'L1'
      'L99'
      'R14'
      'L82'
  ;

  @override
  String solve(String input) {
    return '';  // TDD: Red
    return '3'; // TDD: minimal Green
  }

}

void main() {}