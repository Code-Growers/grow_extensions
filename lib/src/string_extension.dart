extension FebuStringExtension on String {
  /// Check if String is numeric value
  /// ```dart
  /// '1'.isNumeric // true
  /// 'Meoww'.isNumeric // false
  /// ```
  bool get isNumeric => num.tryParse(this) != null;

  /// Returns a copy of this string with the first character converted to uppercase,
  /// leaving the rest of the string unchanged.
  /// If the string is empty, it returns the original string.
  /// ```dart
  /// print('hello'.capitalize); // Output: Hello
  /// print(''.capitalize);      // Output: ''
  /// ```
  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }

  /// Returns `true` if the string contains the degree symbol (`°`),
  /// indicating it may represent a geographic location (latitude or longitude).
  /// ```dart
  /// '48.8584° N, 2.2945° E'.isGeoLocationString // true
  /// 'Hello, world!'.isGeoLocationString // false
  /// ```
  bool get isGeoLocationString => contains('°');
}
