extension FebuKotlinStyleExtension<T> on T? {
  /// exact copy of kotlin like `let` operator. If called on not nil value inner function will be invoked with current value
  /// Be sure to use optional chaining when expecting possible null values
  /// ```dart
  /// 1.let((int value) => value == 1) // true
  /// null.let((int value) => value == 1) // ... nothing :)
  /// ```
  R? let<R>(R Function(T) func) {
    if (this != null) {
      return func(this!);
    }
    return null;
  }

  /// exact copy of kotlin like `apply` operator. If called on not nil value inner function will be invoked
  /// Be sure to use optional chaining when expecting possible null values
  /// ```dart
  /// 1.let(() => print('Meeeoow')) // Meeeoow
  /// null.let(() => print('Puuurr')) // ... nothing :)
  /// ```
  T? apply(void Function(T) func) {
    if (this != null) {
      func(this as T);
    }
    return this;
  }

  /// exact copy of kotlin like `also` operator. If called on not nil value inner function will be invoked with current value
  /// Be sure to use optional chaining when expecting possible null values
  /// Result of inner function invocation will be returned
  /// ```dart
  /// 1.also((int? value) => value) // 2
  /// null.also((int? value) => value) // null :)
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
  void run(Function() func) {
    if (this != null) {
      func();
    }
  }
}
