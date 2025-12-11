import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';

final class Puzzle_2025_2_1 extends Puzzle {
  Puzzle_2025_2_1(): super(year: 2025, day: 2, part: 1);

  @override
  get exampleAnswer => 1227775554;

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
  if (id.length % 2 != 0) return true;
  final partsLength = (id.length / 2).toInt();

  final firstPart = id.substring(0, partsLength);
  final secondPart = id.substring(partsLength);

  return !isSame(firstPart, secondPart);
}
