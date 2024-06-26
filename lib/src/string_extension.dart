extension FebuStringExtension on String {
  /// Check if String is numeric value
  /// ```dart
  /// '1'.isNumeric // true
  /// 'Meoww'.isNumeric // false
  /// ```
  bool get isNumeric => num.tryParse(this) != null;
}
