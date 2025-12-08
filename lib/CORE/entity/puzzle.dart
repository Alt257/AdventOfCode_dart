import 'package:advent_of_code__dart/CORE/data/data_provider/advent_of_code_website/advent_of_code_website.dart';
import 'package:advent_of_code__dart/CORE/utils/parse.dart';


abstract class Puzzle<AnswerType extends Object> {

  static final repo = AdventOfCodeWebsiteDataProvider();

  final int year;
  final int day;
  final int part;
  late final String description;
  late final String input;
  late final String exampleInput;
  late final dynamic exampleAnswer;


  Puzzle({
    required this.year,
    required this.day,
    required this.part,
  });

  Future<void> init() async {
    final aocResponse = await repo.getDescription(year: year, day: day);
    description = aocResponse.description;
    exampleInput = aocResponse.exampleInput;
    exampleAnswer = Parse.to<AnswerType>(aocResponse.exampleAnswer);
    input = await repo.getInput(year: year, day: day).then((response) => response.input);
  }

  dynamic get answer => solve(input);

  dynamic solve(String input);

}