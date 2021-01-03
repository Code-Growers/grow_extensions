extension NumExtension on num {
  /// Number is increased by value passed as param
  /// ```dart
  /// 1.add(1) == 2
  /// ```
  num add(num numberToAdd) => this + numberToAdd;

  /// Number is subtracted by value passed as param
  /// ```dart
  /// 2.sub(1) == 1
  /// ```
  num sub(num numberToSubtract) => this - numberToSubtract;

  /// Number is greater than one passed in param
  /// ```dart
  /// 2.gt(1) == true
  /// 1.gt(1) == false
  /// 3.gt(1) == false
  /// ```
  bool gt(num numberToBeLower) => this > numberToBeLower;

  /// Number is less or equal than one passed in param
  /// ```dart
  /// 2.lt(3) == true
  /// 3.lt(3) == true
  /// 4.lt(3) == false
  /// ```
  bool lt(num numberToBeLower) => this < numberToBeLower;

  /// Whether number is greater or equal than one passed in param
  /// ```dart
  /// 2.gte(1) == true
  /// 1.gte(1) == true
  /// 1.gte(3) == false
  /// ```
  bool gte(num numberToBeLower) => this >= numberToBeLower;

  /// Number is less or equal than one passed in param
  /// ```dart
  /// 2.lte(4) == true
  /// 1.lte(1) == true
  /// 5.lte(3) == false
  /// ```
  bool lte(num numberToBeLower) => this <= numberToBeLower;

  /// Number equal to one passed in param
  /// ```dart
  /// 2.eq(4) == false
  /// 2.eq(2) == true
  /// 2.0.eq(2.0) == true
  /// ```
  bool eq(num numberToEqual) => this == numberToEqual;
}
