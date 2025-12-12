import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
import 'package:advent_of_code__dart/CORE/environment.dart';
import 'package:advent_of_code__dart/CORE/test/hint.dart';
import 'package:advent_of_code__dart/CORE/utils/print.dart';
import 'package:test/test.dart';

export 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
export 'package:advent_of_code__dart/CORE/test/hint.dart';
export 'package:advent_of_code__dart/CORE/test/multi_cases/helper.dart';
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
    testExampleInput(puzzle);
    testRealInput(puzzle);
  });
  testAllHints(puzzle, hints);
}



void testCustomInput(Puzzle puzzle, String? customInput, dynamic customAnswer) {
  if (customInput == null) return;
  final description = customAnswer != null
      ? 'Custom - answer must be $customAnswer'
      : 'Custom  /!\\ NO ANSWER EXPECTED /!\\';

  test(description, () {
    printCenteredTitle('Custom');
    final answer = puzzle.solve(customInput, true);
    printFillLine('=');
    if (customAnswer != null) {
      expect(answer, customAnswer);
    } else {
      print('Custom input answer should be [$answer]');
    }
  });
}


void testRealInput(Puzzle puzzle) {
  test('Real  /!\\ NO ANSWER EXPECTED /!\\', () {
    printCenteredTitle('Real');
    final answer = puzzle.solve(puzzle.input, true);
    printFillLine('=');
    print('Puzzle answer should be [$answer]');
  });
}


void testExampleInput(Puzzle puzzle) {
  test('Example', () {
    printCenteredTitle('Example');
    expect(puzzle.solve(puzzle.exampleInput, true), puzzle.exampleAnswer);
    printFillLine('=');
    print('Example answer is [${puzzle.exampleAnswer}]');
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
