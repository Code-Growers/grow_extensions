extension FebuCastExtension<T> on T {
  /// Cast anything to any type you like
  /// ```dart
  /// final dynamic oneDynamic = 1;
  /// final int oneTyped = oneDynamic.cast<int>();
  /// ```
  R cast<R>() {
    return this as R;
  }
}
