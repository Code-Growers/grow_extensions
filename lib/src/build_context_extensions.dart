import 'package:flutter/widgets.dart';

extension FebuBuildContextExtension on BuildContext {
  /// Shorthand access to MediaQuery instance on current BuildContext
  /// ```dart
  ///  context.mq // MediaQuery
  /// ```
  MediaQueryData get mq => MediaQuery.of(this);

  /// Shorthand access to TextScaler instance on current MediaQuery
  /// ```dart
  ///  context.textScaler // TextScaler
  /// ```
  TextScaler get textScaler => mq.textScaler;

  /// Scales values based on current MediaQuery text scaler value
  /// ```dart
  ///  context.scale(1.0) // 2.0
  /// ```
  double textScalerScale(double value) => textScaler.scale(value);

  /// Check whether text is scaled based on current MediaQuery text scaler value
  /// ```dart
  ///  context.textScaled // false
  /// ```
  bool get textScaled => textScaler.scale(1) > 1;
}
