import 'package:advent_of_code__dart/CORE/test/puzzle_tests.dart';
import 'package:advent_of_code__dart/CORE/utils/parse.dart';

void main() {

  group('Parse.to', () {

    test('String', () {
      final value = '42';
      final parsed = Parse.to<String>(value);
      expect(parsed, isA<String>());
    });

    test('int', () {
      final value = '42';
      final parsed = Parse.to<int>(value);
      expect(parsed, isA<int>());
    });

    test('double', () {
      final value = '42';
      final parsed = Parse.to<double>(value);
      expect(parsed, isA<double>());
    });

    test('bool', () {
      final value = 'true';
      final parsed = Parse.to<bool>(value);
      expect(parsed, isA<bool>());
    });

  });
}
