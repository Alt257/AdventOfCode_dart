import 'package:advent_of_code__dart/CORE/data/data_provider/advent_of_code_website/advent_of_code_website.dart';

abstract class Puzzle {

  static final repo = AdventOfCodeWebsiteDataProvider();

  final int year;
  final int day;
  final int part;
  late final String description;
  late final String input;
  // late final String exampleInput;
  // late final String exampleAnswer;


  Puzzle({
    required this.year,
    required this.day,
    required this.part,
  });

  Future<void> init() async {
    description = await repo.getDescription(year: year, day: day).then((value) => value.description);
    input = await repo.getInput(year: year, day: day).then((value) => value.input);
    // exampleInput = await repo.getExampleInput(year: year, day: day).then((value) => value.input);
    // exampleAnswer = await repo.getExampleAnswer(year: year, day: day).then((value) => value.answer);
  }

  String get exampleInput;
  dynamic get exampleAnswer;
  dynamic get answer => solve(input);

  dynamic solve(String input);

}