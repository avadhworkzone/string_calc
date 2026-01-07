import 'package:test/test.dart';
import 'package:string_calc/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    late StringCalculator calculator;

    setUp(() {
      calculator = StringCalculator();
    });

    test('returns 0 for empty string', () {
      expect(calculator.add(''), equals(0));
    });

    test('returns the number for single number', () {
      expect(calculator.add('1'), equals(1));
      expect(calculator.add('5'), equals(5));
    });

    test('returns sum for two comma-separated numbers', () {
      expect(calculator.add('1,2'), equals(3));
      expect(calculator.add('1,5'), equals(6));
    });

    test('handles multiple numbers', () {
      expect(calculator.add('1,2,3'), equals(6));
      expect(calculator.add('1,2,3,4,5'), equals(15));
    });

    test('handles newline as delimiter', () {
      expect(calculator.add('1\n2,3'), equals(6));
      expect(calculator.add('1\n2\n3'), equals(6));
    });

    test('supports custom single-char delimiter', () {
      expect(calculator.add('//;\n1;2'), equals(3));
      expect(calculator.add('//*\n1*2*3'), equals(6));
    });

    test('throws exception for negative numbers', () {
      expect(
        () => calculator.add('-1,2'),
        throwsA(predicate((e) => 
          e is Exception && 
          e.toString().contains('negative numbers not allowed -1')
        )),
      );
    });

    test('shows all negative numbers in exception message', () {
      expect(
        () => calculator.add('-1,2,-3'),
        throwsA(predicate((e) => 
          e is Exception && 
          e.toString().contains('negative numbers not allowed -1,-3')
        )),
      );
    });

    test('ignores numbers greater than 1000', () {
      expect(calculator.add('2,1001'), equals(2));
      expect(calculator.add('1000,1001,2'), equals(1002));
    });

    test('supports multi-character delimiter', () {
      expect(calculator.add('//[***]\n1***2***3'), equals(6));
      expect(calculator.add('//[;;]\n1;;2;;3'), equals(6));
    });

    test('supports multiple delimiters', () {
      expect(calculator.add('//[*][%]\n1*2%3'), equals(6));
      expect(calculator.add('//[;][,]\n1;2,3'), equals(6));
    });

    test('supports multiple multi-character delimiters', () {
      expect(calculator.add('//[***][%%%]\n1***2%%%3'), equals(6));
      expect(calculator.add('//[abc][def]\n1abc2def3'), equals(6));
    });

    test('throws exception for invalid input', () {
      expect(
        () => calculator.add('1,a,3'),
        throwsA(isA<FormatException>()),
      );
    });

    test('ignores empty parts between delimiters', () {
      expect(calculator.add('1,,3'), equals(4));
      expect(calculator.add(',1,2,'), equals(3));
      expect(calculator.add(',,'), equals(0));
      expect(calculator.add(' 1 , 2 '), equals(3));
    });
  });
}