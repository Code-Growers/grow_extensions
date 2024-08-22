extension FebuIterableExtension<T> on Iterable<T> {
  /// Use where method then call toList method all in one go
  List<T> whereToList(bool Function(T) condition) => where(condition).toList();

  /// Use map method then call toList method all in one go
  List<E> mapToList<E>(E Function(T) transformer) => map(transformer).toList();

  /// Use firstWhere method and in case no match return null
  T? firstWhereOrNull(bool Function(T) condition) {
    try {
      return firstWhere(condition);
    } catch (_) {
      return null;
    }
  }

  /// Use lastWhere method and in case no match return null
  T? lastWhereOrNull(bool Function(T) condition) {
    try {
      return lastWhere(condition);
    } catch (_) {
      return null;
    }
  }

  /// Use firstWhere method and in case no match return fallback value
  T firstWhereOrFallback(bool Function(T) condition, {required T fallback}) =>
      firstWhere(condition, orElse: () => fallback);

  /// Use lastWhere method and in case no match return fallback value
  T lastWhereOrFallback(bool Function(T) condition, {required T fallback}) =>
      lastWhere(condition, orElse: () => fallback);

  /// Element at index or null, wont throw on negative number 
  /// ```dart
  /// [1].atOrNull(0) // 1
  /// [1].atOrNull(2) // null
  /// [1].atOrNull(-1) // null
  /// ```
  T? atOrNull(int index) {
    try {
      return elementAtOrNull(index);
    } catch (_) {
      return null;
    }
  }
}
