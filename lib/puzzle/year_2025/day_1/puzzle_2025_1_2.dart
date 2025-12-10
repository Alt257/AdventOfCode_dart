import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_1.dart';

final class Puzzle_2025_1_2 extends Puzzle {
  Puzzle_2025_1_2(): super(year: 2025, day: 1, part: 2);

  @override
  dynamic get exampleAnswer => 6;

  @override
  solve(String input, [bool verbose = false]) {

    final allMoves = toListOfDialMove(input);
    var position = startingPosition;
    final counter = Counter();

    for (final move in allMoves) {

      final step = move.direction == Direction.left ? -1 : 1;
      final previousPosition = position;

      for (var i = 0; i < move.distance; i++) {
        position += step;

        if (position < min) {
          position = max;
        } else if (position > max) {
          position = min;
        }

        if (position == 0) {
          counter.increase(i == move.distance - 1
              ? 'stopped at [$position]'
              : 'pointed at [0] while moving ${move.direction.name}'
          );
        }
      }


      /////////////////// debug /////////////////
      if(verbose
      /// FILTERS to help debug by finding problematic rows
      // detect if we are in wrong position
      // && position > max   // too high
      // && position < min    // too low
      //
      // && counter.hasIncreased
      // && counter.hasNotIncreased
      // && move.direction == Direction.left
      // && move.direction == Direction.right
      // && move.distance > 100
      // && move.distance < 100
      // && position == 0
      // && position != 0
      // && previousPosition == 0
      // && counter.value != offset
      // && move.distance != previousPosition
      // && counter.value != 1
      // && counter.reasons.length > 1
      ) {
        print(
            '[$previousPosition]--${move.toShortString()}-->[$position]'
            ' - counter: ${counter.total}'
            '${counter.hasIncreased ? '(+${counter.value})'
            ' ${counter.reasons.entries.map((e) => '(${e.value}) ${e.key}')}' : ''}'
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
