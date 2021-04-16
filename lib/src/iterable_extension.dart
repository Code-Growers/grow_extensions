extension FebuIterableExtension<T> on Iterable<T> {
  /// Use where method then call toList method all in one go
  List<T> whereToList(bool Function(T) condition) => where(condition).toList();

  /// Use map method then call toList method all in one go
  List<E> mapToList<E>(E Function(T) transformer) => map(transformer).toList();

  /// Use firstWhere method and in case no match return fallback value
  T firstWhereOrFallback(bool Function(T) condition, {required T fallback}) =>
      firstWhere(condition, orElse: () => fallback);

  /// Use lastWhere method and in case no match return fallback value
  T lastWhereOrFallback(bool Function(T) condition, {required T fallback}) =>
      lastWhere(condition, orElse: () => fallback);
}
