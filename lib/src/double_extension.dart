extension FebuDoubleExtension on double {
  /// double is multiplied by value passed as param
  /// ```dart
  /// 2.mul(3) == 6
  /// ```
  double mul(num numberToMultiply) => this * numberToMultiply;

  /// double is divided by value passed as param
  /// ```dart
  /// 6.mul(3) == 2
  /// ```
  double div(num numberToDivide) => this / numberToDivide;
}
