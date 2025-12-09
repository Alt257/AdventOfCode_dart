import 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
import 'package:advent_of_code__dart/CORE/entity/wrong_answer.dart';
import 'package:advent_of_code__dart/CORE/environment.dart';
import 'package:test/test.dart';

export 'package:advent_of_code__dart/CORE/entity/puzzle.dart';
export 'package:advent_of_code__dart/CORE/entity/wrong_answer.dart';
export 'package:test/test.dart';

Future<void> runPuzzleTests(
      Puzzle puzzle, {
      String? customInput,
      dynamic customAnswer,
      List<WrongAnswer> wrongAnswers = const [],
      void Function(Puzzle puzzle)? runCustomTests,
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


  if (runCustomTests != null) {
    group('Custom tests', () {
      runCustomTests(puzzle);
    });
  }
  group('Input tests', () {
    testCustomInput(puzzle, customInput, customAnswer);
    testExample(puzzle);
  });
  testPreviousWrongAnswers(puzzle, wrongAnswers);
}



void testCustomInput(Puzzle puzzle, String? customInput, dynamic customAnswer) {
  if (customInput == null) return;
  final answer = puzzle.solve(customInput);
  if (customAnswer != null) {
    test('Custom input, answer must be $customAnswer', () {
      expect(answer, customAnswer);
    });
  } else {
    test('/!\\ Custom input - NO VALUE EXPECTED /!\\', () {
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


void testPreviousWrongAnswers(Puzzle puzzle, List<WrongAnswer> wrongAnswers) {
  if (wrongAnswers.isEmpty) return;
  group('Previous wrong answers', () {
    for (final wrongAnswer in wrongAnswers) {
      testPreviousWrongAnswer(puzzle, wrongAnswer);
    }
  });
}

void testPreviousWrongAnswer(Puzzle puzzle, WrongAnswer wrongAnswer) {
  test(wrongAnswer.toString(), () {
    final answer = puzzle.solve(puzzle.input);
    expect(answer, wrongAnswer.matcher(wrongAnswer.value));
  });
}
