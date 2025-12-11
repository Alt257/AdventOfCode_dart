

final class TestCase<Input, Expect> {

  final Input input;
  final Expect expect;

  TestCase(this.input, {required this.expect});

}
