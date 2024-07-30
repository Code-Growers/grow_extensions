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
  List<T> uniqBy<T, Y>([Y Function(T element)? id, bool inplace = true]) {
    final ids = <dynamic>{};
    final List<T> list = inplace ? this as List<T> : List<T>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Y));
    return list;
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

  /// check if element is not last in list
  /// ```dart
  /// <int>[1, 2, 3].isLast(1) // true
  /// <int>[1, 2, 3].isLast(3) // false
  /// ```
  bool isNotLast(T element) => !isLast(element);

  /// check if element is not first in list
  /// ```dart
  /// <int>[1, 2, 3].isFirst(1) // false
  /// <int>[1, 2, 3].isFirst(3) // true
  /// ```
  bool isNotFirst(T element) => !isFirst(element);
}
