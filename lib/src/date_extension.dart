import 'bool_extension.dart';

extension FebuDateExtension on DateTime {
  /// Check date is today
  /// ```dart
  /// DateTime.now().isToday // true
  /// ```
  bool get isToday {
    DateTime now = DateTime.now();
    return DateTime(
          year,
          month,
          day,
        ).difference(DateTime(now.year, now.month, now.day)).inDays ==
        0;
  }

  /// Check date is same month
  /// ```dart
  /// DateTime.now().isSameMonth // true
  /// ```
  bool get isSameMonth {
    DateTime now = DateTime.now();
    return month == now.month && year == now.year;
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

  /// Returns the number of seconds elapsed since the Unix epoch (January 1, 1970).
  /// This is calculated by dividing [millisecondsSinceEpoch] by 1000 and truncating to an integer.
  /// ```dart
  /// final now = DateTime.now();
  /// print(now.secondsSinceEpoch); // e.g., 1681234567
  /// ```
  int get secondsSinceEpoch => millisecondsSinceEpoch ~/ 1000;
}
