import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_currency/flutter_currency.dart';

void main() {
  test('adds one to input values', () {
    final calculator = FlutterCurrency(14.9);
    final temp = calculator.add(2.0);
    expect(temp.value, 16.9);
    expect(calculator.multiply(0.95).toString(), '16.06');
    expect(FlutterCurrency(16.9 * 0.95 * 2).toString(), '32.11');
    // expect(calculator.addOne(0), 1);
    // expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });
}
