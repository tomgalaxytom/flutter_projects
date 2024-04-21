import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertesting/counter.dart';

void main() {
  group('Test start, increment, decrement', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
    test('adds two numbers', () {
      final calculator = Calculator();
      final result = calculator.multiply(2, 3);
      expect(result, 6);
    });
  });
}


