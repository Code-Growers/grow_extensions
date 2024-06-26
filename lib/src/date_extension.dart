import 'package:febu/src/bool_extension.dart';

extension FebuDateExtension on DateTime {
  /// Check date is today
  /// ```dart
  /// DateTime.now().isToday // true
  /// ```
  bool get isToday {
    DateTime now = DateTime.now();
    return DateTime(year, month, day)
            .difference(DateTime(now.year, now.month, now.day))
            .inDays ==
        0;
  }

  /// Check date is not today
  /// ```dart
  /// DateTime.now().isNotToday // false
  /// ```
  bool get isNotToday {
    return isToday.not;
  }
}
