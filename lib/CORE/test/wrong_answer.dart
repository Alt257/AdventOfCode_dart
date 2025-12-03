part of 'utils.dart';

final class WrongAnswer {
  WrongAnswer(this.value, {
    required this.queue,
    this.matcher,
  });

  final dynamic value;
  final String queue;
  final Matcher Function(Object)? matcher;

  @override
  String toString() => '$value $queue';
}
