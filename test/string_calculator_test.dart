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

  test('newlines work as delimiters', () {
    final calculator = StringCalculator();
    expect(calculator.add('1\n2,3'), equals(6));
  });

  test('custom delimiters work', () {
    final calculator = StringCalculator();
    expect(calculator.add('//;\n1;2'), equals(3));
  });

  test('negative numbers throw exception', () {
    final calculator = StringCalculator();
    expect(
      () => calculator.add('-1,2'),
      throwsA(predicate((e) => 
        e is Exception && 
        e.toString().contains('negative numbers not allowed -1')
      )),
    );
  });

  test('multiple negative numbers in exception', () {
    final calculator = StringCalculator();
    expect(
      () => calculator.add('-1,2,-3'),
      throwsA(predicate((e) => 
        e is Exception && 
        e.toString().contains('negative numbers not allowed -1,-3')
      )),
    );
  });

  test('numbers greater than 1000 are ignored', () {
    final calculator = StringCalculator();
    expect(calculator.add('2,1001'), equals(2));
    expect(calculator.add('1000,1001,2'), equals(1002));
  });

  test('multi-character delimiters work', () {
    final calculator = StringCalculator();
    expect(calculator.add('//[***]\n1***2***3'), equals(6));
  });
}