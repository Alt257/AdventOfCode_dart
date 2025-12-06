import 'package:advent_of_code__dart/CORE/data/data_provider/advent_of_code_website/advent_of_code_website.dart';
import 'package:advent_of_code__dart/CORE/environment.dart';
import 'package:advent_of_code__dart/CORE/test/utils.dart';
import 'package:advent_of_code__dart/puzzle/year_2025/day_1/puzzle_2025_1_1.dart';

void main() {

  setUpAll(() {
    Environment.load();
  });

  test('AdventOfCodeWebsite_GetDescription_Response', () async {
    final aocWebsite = AdventOfCodeWebsiteDataProvider();
    final data = await aocWebsite.getDescription(year: 2025, day: 1);
    expect(data, isA<AdventOfCodeWebsite_GetDescription_Response>());
    expect(data.description, isNotEmpty);
    expect(data.exampleInput, isNotNull);
    expect(data.exampleAnswer, isNotNull);
  });

  test('AdventOfCodeWebsite_GetInput_Response', () async {
    final aocWebsite = AdventOfCodeWebsiteDataProvider();
    final data = await aocWebsite.getInput(year: 2025, day: 1);
    expect(data, isA<AdventOfCodeWebsite_GetInput_Response>());
    expect(data.input, isNotEmpty);
  });

  test('Puzzle.init() ', () async {
    final puzzle = Puzzle_2025_1_1();
    await puzzle.init();
    expect(puzzle.year, 2025);
    expect(puzzle.day, 1);
    expect(puzzle.description, isNotEmpty);
    expect(puzzle.exampleInput, isNotNull);
    expect(puzzle.exampleAnswer, isNotNull);
    expect(puzzle.input, isNotNull);
  });
}