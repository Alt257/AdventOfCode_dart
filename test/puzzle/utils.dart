
import 'package:advent_of_code__dart/CORE/environment.dart';
import 'package:advent_of_code__dart/entity/puzzle.dart';
import 'package:test/test.dart';

void runPuzzleTests(Puzzle puzzle) {
  group('Puzzle ${puzzle.runtimeType}', () {

    setUpAll(() async {
      await Environment.load();
      await puzzle.init();
    });

    testExample(puzzle);
  });
}

void testExample(Puzzle puzzle) =>
    test('Example input, answer must be ${puzzle.exampleAnswer}', () {
      final answer = puzzle.solve(puzzle.exampleInput);
      expect(answer, puzzle.exampleAnswer);
    });