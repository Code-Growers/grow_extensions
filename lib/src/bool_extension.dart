extension FebuBoolExtension on bool {
  /// Negate current boolean value
  /// ```dart
  /// true.not == false // true
  /// ```
  bool get not => !this;

  /// Check if value is falsy
  /// ```dart
  /// false.falsy // true
  /// true.falsy // false
  /// ```
  bool get falsy => this == false;

  /// Check if value is truthy
  /// ```dart
  /// false.truthy // false
  /// true.truthy // true
  /// ```
  bool get truthy => this == true;
}
