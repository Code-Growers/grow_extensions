import 'package:flutter/widgets.dart';

extension FebuBuildContextExtension on BuildContext {
  /// Shorthand access to MediaQuery instance on current BuildContext
  /// ```dart
  ///  context.mq // MediaQuery
  /// ```
  MediaQueryData get mq => MediaQuery.of(this);

  /// Scales values based on current MediaQuery text scaler value
  /// ```dart
  ///  context.scale(1.0) // 2.0
  /// ```
  double textScalerScale(double value) => mq.textScaler.scale(value);
}
