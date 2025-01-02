import 'package:flutter/material.dart';

const _kScaleMinInput = 1.0;
const _kScaleMaxInput = 2.0;
const _kScaleMinOutput = 1.0;

double _normalizeTextScalerValue(double value, double maxOutput) {
  double scaledValue = value;
  if (value < _kScaleMinInput) {
    scaledValue = _kScaleMinInput;
  } else if (value > _kScaleMaxInput) {
    scaledValue = _kScaleMaxInput;
  }
  return ((scaledValue - _kScaleMinInput) /
              (_kScaleMaxInput - _kScaleMinInput)) *
          (maxOutput - _kScaleMinOutput) +
      _kScaleMinOutput;
}

extension FebuTextScalerExtension on TextScaler {
  /// Scale any logical size using text scale factor with upper bound factor
  /// Resulted scaled value will be normalized, so there will be no size jumps
  /// ```dart
  /// TextScaler.linear(2.0).scaleWithNormalizedLimit(48, 1.33) // 64
  /// ```
  double scaleWithNormalizedLimit(double baseValue, double upperBoundFactor) {
    final double scaledValue = scale(baseValue);
    final scaleFactor = scaledValue / baseValue;
    final double normalizedScaleFactor =
        _normalizeTextScalerValue(scaleFactor, upperBoundFactor);
    return baseValue * normalizedScaleFactor;
  }
}
