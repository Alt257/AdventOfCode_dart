



final class TestCase<Input, Expect> {

  final List<dynamic> input;
  final Expect expect;

  TestCase(dynamic input, {required this.expect}): input = input is List
      ? input
      : [input];

}

