
final class TestCase<Input, Expect> {

  final List<dynamic> _input;
  dynamic get input => _input.length == 1 ? _input[0] : _input;
  final Expect expect;

  TestCase(dynamic input, {required this.expect}): _input = input is List
      ? input
      : [input];

}

