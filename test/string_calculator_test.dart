import 'package:test/test.dart';
import 'package:string_calc/string_calculator.dart';

void main() {
  test('empty string returns 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), equals(0));
  });
}