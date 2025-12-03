part of 'utils.dart';

final class WrongAnswer {
  WrongAnswer({required this.answer, required this.queue, this.matcher});

  final dynamic answer;
  final String queue;
  final Matcher? matcher;

  @override
  String toString() => '$answer $queue';
}
