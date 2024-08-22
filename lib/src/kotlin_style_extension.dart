extension FebuKotlinStyleExtension<T> on T? {
  /// exact copy of kotlin like `let` operator. If called on not nil value inner function will be invoked with current value
  /// Be sure to use optional chaining when expecting possible null values
  /// ```dart
  /// 1.let((int value) => print(value == 1)) // true
  /// null.let((int value) => print(value == 1)) // ... nothing :)
  /// ```
  T? let(T Function(T) func) {
    if (this != null) {
      return func(this!);
    }
    return this;
  }

  /// exact copy of kotlin like `apply` operator. If called on not nil value inner function will be invoked
  /// Be sure to use optional chaining when expecting possible null values
  /// ```dart
  /// 1.let(() => print('Meeeoow')) // Meeeoow
  /// null.let(() => print('Puuurr')) // ... nothing :)
  /// ```
  T? apply(T Function() func) {
    if (this != null) {
      return func();
    }
    return this;
  }

  /// exact copy of kotlin like `let` operator. If called on not nil value inner function will be invoked with current value
  /// Be sure to use optional chaining when expecting possible null values
  /// Result of inner function invocation will be returned
  /// ```dart
  /// 1.also((int value) => 2) // 2
  /// null.also((int value) => 2) // ... nothing :)
  /// ```
  R also<R>(R Function(T?) func) {
    return func(this);
  }

  /// exact copy of kotlin like `run` operator. If called on not nil value inner function will be invoked
  /// Be sure to use optional chaining when expecting possible null values
  /// Result of inner function invocation will be returned
  /// ```dart
  /// 1.run(() => 'Meeeoow') // Meeeoow
  /// null.run(() => 'Puuurr') // ... nothing :)
  /// ```
  R run<R>(R Function() func) {
    return func();
  }
}
