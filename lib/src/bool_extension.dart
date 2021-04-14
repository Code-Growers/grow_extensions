extension FebuBoolExtension on bool {
  /// Negate current boolean value
  /// ```dart
  /// true.not == false // true
  /// ```
  bool get not => !this;

  /// Check if value is falsy or null
  /// ```dart
  /// null.nilOrFalsy // true
  /// false.nilOrFalsy // true
  /// true.nilOrFalsy // false
  /// ```
  bool get nilOrFalsy => this == null || this == false;
}
