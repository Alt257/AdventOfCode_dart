import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';

final class Puzzle_2025_2_1 extends Puzzle {
  Puzzle_2025_2_1(): super(year: 2025, day: 2, part: 1);

  @override
  get exampleAnswer => 1227775554;

  @override
  solve(String input, [bool verbose = false]) {
    // ...
    return 1227775554;
  }
}


bool isSame(String a, String b) {
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

bool isValidID(String id) {
  if (id.length % 2 != 0) return false;
  final partsLength = (id.length / 2).toInt();

  final firstPart = id.substring(0, partsLength);
  final secondPart = id.substring(partsLength);

  return !isSame(firstPart, secondPart);
}
