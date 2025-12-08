import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_1.dart';

final class Puzzle_2025_1_2 extends Puzzle {
  Puzzle_2025_1_2(): super(year: 2025, day: 1, part: 2);

  @override
  dynamic get exampleAnswer => 6;

  @override
  solve(String input) {
    const verbose = true;

    final allMoves = toListOfDialMove(input);
    var position = startingPosition;
    final counter = Counter();

    for (final move in allMoves) {

      final previousPosition = position;

      if (move.direction == Direction.left) {
        position -= move.distance;
        while (position < min) {
          position += range;
          counter.increase('pointed 0 while moving to the left');
        }

      } else { // move.direction == Direction.right
        position += move.distance;
        while (position > max) {
          position -= range;
          counter.increase('pointed 0 while moving to the right');
        }
      }

      if (position == 0 && counter.hasNotIncreased) {
        counter.increase('stopped at 0');
      }

      /////////////////// debug /////////////////
      if(verbose
      /// FILTERS to help debug by finding problematic rows
      // && counter.hasIncreased
      // && move.distance <100
      //
      // detect if we are in wrong position
      // && position > max   // too high
      // && position < min    // too low
      //
      // && move.distance > 100
      && position == 0
      ) {
        print(
            '$move'
            ' - position: $previousPosition -> $position'
            ' - counter: ${counter.total}'
            '${counter.hasIncreased ? '(+${counter.value})'
            ' - ${counter.reasons}' : ''}'
        );
      }
      ///////////////////////////////////////////

      counter.reset();
    }

    return counter.total;
  }
  
}


final class Counter {
  int _value = 0;
  int _total = 0;
  Map<String, int> reasons;
  Counter(): reasons = {};

  void increase(String reason) {
    _value++;
    _total++;
    final i = reasons[reason];
    if (i != null)   reasons[reason] = i + 1;
    else             reasons[reason] = 1;
  }
  void reset() { _value = 0; reasons.clear(); }

  int get value => _value;
  int get total => _total;
  bool get hasIncreased => _value > 0;
  bool get hasNotIncreased => !hasIncreased;
  String get reasonsString => reasons.toString();
}
