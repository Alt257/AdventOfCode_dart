import 'package:advent_of_code__dart/CORE/entity/hint.dart';
import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
import 'package:advent_of_code__dart/CORE/environment.dart';
import 'package:test/test.dart';

export 'package:advent_of_code__dart/CORE/entity/hint.dart';
export 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
export 'package:advent_of_code__dart/CORE/entity/test_data.dart';
export 'package:test/test.dart';

Future<void> runPuzzleTests(
      Puzzle puzzle, {
      String? customInput,
      dynamic customAnswer,
      List<Hint> hints = const [],
      void Function(Puzzle puzzle)? tests,
  }) async {
  assert((customAnswer != null && customInput != null)
      // || (customAnswer == null && customInput == null),
      // 'You must provide both customInput and customAnswer'
      || (customAnswer == null),
      'When you provide customAnswer, you must also provide customInput'
  );


  setUpAll(() async {
    await Environment.load();
    await puzzle.init();
  });


  if (tests != null) {
    group('Tests', () {
      tests(puzzle);
    });
  }
  group('Inputs', () {
    testCustomInput(puzzle, customInput, customAnswer);
    testExample(puzzle);
  });
  testAllHints(puzzle, hints);
}



void testCustomInput(Puzzle puzzle, String? customInput, dynamic customAnswer) {
  if (customInput == null) return;
  final answer = puzzle.solve(customInput);
  if (customAnswer != null) {
    test('Custom - answer must be $customAnswer', () {
      expect(answer, customAnswer);
    });
  } else {
    test('Custom  /!\\ NO ANSWER EXPECTED /!\\', () {
      print('Custom input answer should be $answer');
    });
  }
}


void testExample(Puzzle puzzle) {
  test('Example', () {
    final answer = puzzle.solve(puzzle.exampleInput);
    expect(answer, puzzle.exampleAnswer);
    print('Real input answer should be ${puzzle.answer}');
  });
}


void testAllHints(Puzzle puzzle, List<Hint> hints) {
  if (hints.isEmpty) return;
  group('Hints', () {
    for (final hint in hints) {
      testHint(puzzle, hint);
    }
  });
}

void testHint(Puzzle puzzle, Hint hint) {
  test(hint.toString(), () {
    final answer = puzzle.solve(puzzle.input);
    expect(answer, hint.matcher(hint.value));
  });
}
