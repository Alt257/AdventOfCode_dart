import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';

final class Puzzle_2025_2_2 extends Puzzle {
  Puzzle_2025_2_2(): super(year: 2025, day: 2, part: 2);

  @override
  get exampleAnswer => 4174379265;

  @override
  solve(String input, [bool verbose = false]) {
    final rangesList = input.replaceAll('\n', '').split(',');
    int sumOfInvalidIDs = 0;

    for (final range in rangesList) {
      final first = int.parse(range.split('-')[0]);
      final last = int.parse(range.split('-')[1]);
      if(verbose) print('--- from $first to $last ---');

      if (first > last) throw Exception('first > last');

      for (var i = first; i <= last; i++) {
        final isNotValid = isNotAValidID(i.toString());
        if (verbose
        && false
        && isNotValid
        ){
          print('$i is ${isNotValid ? 'NOT ' : ''}valid');
        }
        if (isNotValid) {
          sumOfInvalidIDs += i;
        }
      }
    }

    return sumOfInvalidIDs;
  }
}


bool isSame(String a, String b) {
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

bool isNotAValidID(String id) => !isAValidID(id);
bool isAValidID(String id) {

  for (var partLength = 1; partLength < id.length; partLength++) {
    final firstPart = id.substring(0, partLength);
    final secondPart = id.substring(partLength);

    if (isRepetedPattern(firstPart, secondPart)) return false;
  }

  return true;
}

bool isRepetedPattern(String pattern, String id) {
  if (id.isEmpty) return false;
  return id.replaceAll(pattern, '').isEmpty;
}
