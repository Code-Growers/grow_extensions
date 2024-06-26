extension FebuListExtension<T> on List<T> {
  /// keep that immutability going by creating new instance of current list
  /// ```dart
  /// final List<int> list = <int>[1, 2];
  /// list == list.copy() // false
  /// ```
  List<T> copy() => List<T>.from(this, growable: true);

  /// get nth element of current list
  /// ```dart
  /// <int>[1, 3].nth(2) // 3
  /// ```
  T nth(int index) => this[index];

  /// when using complex structures create unique list by defining unique identifier
  /// ```dart
  /// <Cat>[Cat(name: 'Garfield'), Cat(name: 'Garfield')].uniqBy((Cat cat) => cat.name) // <Cat>[Cat(name: 'Garfield')]
  /// ```
  List<T> uniqBy<T, Y>(Y Function(T) onMap) {
    final List<Y> uniqueIdentifies =
        map((dynamic entity) => onMap(entity as T)).toSet().toList();
    return uniqueIdentifies.map((Y identifier) {
      try {
        return firstWhere(
            (dynamic element) => onMap(element as T) == identifier);
      } catch (_) {
        return null;
      }
    }).toList() as List<T>;
  }

  /// when using simple structures create unique list using toSet method
  /// ```dart
  /// <int>[1, 2, 1].simpleUniq // <Cat>[1, 2]
  /// ```
  List<T> get simpleUniq => toSet().toList();

  /// check if element is last in list 
  /// ```dart
  /// <int>[1, 2, 3].isLast(1) // false 
  /// <int>[1, 2, 3].isLast(3) // true 
  /// ```
  bool isLast(T element) => indexOf(element) == length - 1;

  /// check if element is first in list 
  /// ```dart
  /// <int>[1, 2, 3].isFirst(1) // true 
  /// <int>[1, 2, 3].isFirst(3) // false 
  /// ```
  bool isFirst(T element) => indexOf(element) == 0;
}
