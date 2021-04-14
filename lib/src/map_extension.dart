extension FebuMapExtension<K, V> on Map<K, V> {
  /// keep that immutability going by creating new instance of current map
  /// ```dart
  /// final Map<int, int> map = <int, int>{ 1: 1 };
  /// map == map.copy() // false
  /// ```
  Map<K, V> copy() => Map<K, V>.from(this);

  /// remove empty or null values from Map
  /// ```dart
  /// final Map<String, String> map = <String, String>{ 'key': '', 'anotherKey': null, 'yetAnotherKey': 'value' }; // <String, String>{ 'yetAnotherKey': 'value' }
  /// ```
  Map<K, V> get removeEmpty =>
      this..removeWhere((_, V value) => value == null || value == '');

  /// remove falsy values from Map
  /// ```dart
  /// final Map<String, bool> map = <String, bool>{ 'key': true, 'anotherKey': false }; // <String, bool>{ 'key': true }
  /// ```
  Map<K, V> get removeFalsy =>
      this..removeWhere((_, V value) => value == false);

  /// remove empty or falsy falsy values from Map
  /// ```dart
  /// final Map<String, dynamic> map = <String, dynamic>{ 'key': true, 'anotherKey': false, 'yetAnotherKey': null, 'ohMyAnotherKey': '' }; // <String, bool>{ 'key': true }
  /// ```
  Map<K, V> get removeEmptyOrFalsy => this.removeEmpty.removeFalsy;

  /// remove keys defined by passed list
  /// ```dart
  /// final Map<String, dynamic> map = <String, dynamic>{ 'key': true, 'anotherKey': false, 'yetAnotherKey': null }.without(<String>['anotherKey', 'yetAnotherKey']); // <String, bool>{ 'key': true }
  /// ```
  Map<K, V> without(List<K> keysToRemove) {
    keysToRemove.forEach((K key) => this..remove(key));
    return this;
  }
}
