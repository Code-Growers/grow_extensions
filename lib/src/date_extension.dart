import 'bool_extension.dart';

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

  /// Check date is same date as input. Compared by day, month and year, not time
  /// ```dart
  /// DateTime.now().isSameDate(DateTime.now()) // true
  /// ```
  bool isSameDate(DateTime date) =>
      day == date.day && month == date.month && year == date.year;
}
