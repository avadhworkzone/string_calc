import 'package:test/test.dart';
import 'package:string_calc/string_calculator.dart';

void main() {
  test('empty string returns 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), equals(0));
  });

  test('single number returns itself', () {
    final calculator = StringCalculator();
    expect(calculator.add('1'), equals(1));
  });

  test('two numbers return sum', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,2'), equals(3));
  });

  test('multiple numbers return sum', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,2,3,4,5'), equals(15));
  });
}