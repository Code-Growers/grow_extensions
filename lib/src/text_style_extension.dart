import 'package:flutter/material.dart';

import 'build_context_extensions.dart';

extension FebuTextStyleExtension on TextStyle {
  /// Creates a new TextStyle instance with font weight to BOLD
  /// ```dart
  /// TextStyle().bold
  /// ```
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  /// Creates a new TextStyle instance with font weight to SemiBold
  /// ```dart
  /// TextStyle().semiBold
  /// ```
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  /// Creates a new TextStyle instance with font weight to Medium
  /// ```dart
  /// TextStyle().medium
  /// ```
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  /// Creates a new TextStyle instance with font weight to normal
  /// ```dart
  /// TextStyle().normal
  /// ```
  TextStyle get normal => copyWith(fontWeight: FontWeight.w400);

  /// Creates a new TextStyle instance with color set to transparent to visually hide the text
  /// ```dart
  /// TextStyle().hidden
  /// ```
  TextStyle get hidden => withColor(Colors.transparent);

  /// Creates a new TextStyle instance with new color
  /// ```dart
  /// TextStyle().withColor(Colors.red)
  /// ```
  TextStyle withColor(Color color) => copyWith(color: color);

  /// Creates a new TextStyle instance with fontSize scaled by current textScaler factor on BuildContext
  /// ```dart
  /// TextStyle().withScale(Colors.red)
  /// ```
  TextStyle withScale(BuildContext context) =>
      copyWith(fontSize: context.mq.textScaler.scale((fontSize ?? 0)));
}
