extension IterableExtension<T> on Iterable<T> {
  /// Use where method then call toList method all in one go
  List<T> whereToList(bool Function(T) condition) => where(condition).toList();

  /// Use map method then call toList method all in one go
  List<E> mapToList<E>(E Function(T) transformer) => map(transformer).toList();

  /// Use firstWhere method and in case no match return null
  T firstWhereOrNull(bool Function(T) condition) =>
      firstWhere(condition, orElse: () => null);

  /// Use lastWhere method and in case no match return null
  T lastWhereOrNull(bool Function(T) condition) =>
      lastWhere(condition, orElse: () => null);

  /// Use firstWhere method and in case no match return fallback value
  T firstWhereOrFallback(bool Function(T) condition, {T fallback}) =>
      firstWhere(condition, orElse: () => fallback);

  /// Use lastWhere method and in case no match return fallback value
  T lastWhereOrFallback(bool Function(T) condition, {T fallback}) =>
      lastWhere(condition, orElse: () => fallback);
}
