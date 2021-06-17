library flutter_currency;

import 'dart:math';

import 'package:flutter_currency/utils.dart';

/// A Flutter currency lib
class FlutterCurrency {
  num intValue = 0;
  get value => intValue / 100;
  num _precision = 0;

  FlutterCurrency(num d) {
    intValue = parse(d);
    _precision = pow(10, 2);
  }

  parse(num value, {useRounding = true}) {
    num v = value;
    v *= 100;
    v = double.parse(v.toStringAsFixed(4));
    return v.round();
  }

  FlutterCurrency add(number) {
    return FlutterCurrency((this.intValue += parse(number)) / 100);
  }

  FlutterCurrency subtract(number) {
    return FlutterCurrency((this.intValue -= parse(number)) / 100);
  }

  FlutterCurrency multiply(number) {
    return FlutterCurrency((this.intValue *= number) / 100);
  }

  FlutterCurrency divide(number) {
    return FlutterCurrency((this.intValue /= parse(number)) / 100);
  }

  @override
  String toString() {
    return rounding(intValue / _precision, 1 / _precision).toStringAsFixed(2);
  }
}
