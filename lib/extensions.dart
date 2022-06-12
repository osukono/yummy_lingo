extension IterableExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (E element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }

  //returns random elements from the iterable
  Iterable<E> randomElements(int count) {
    final shuffled = toList()..shuffle();
    return shuffled.take(count);
  }
}

extension SwappableList<E> on List<E> {
  //swaps two elements in a list
  void swap(int first, int second) {
    final temp = this[first];
    this[first] = this[second];
    this[second] = temp;
  }
}

extension StringExtension on String {
  String capitalize() {
    return isEmpty ? this : '${this[0].toUpperCase()}${this.substring(1)}';
  }

  //returns a string with the first letter capitalized
  String deCapitalize() {
    return isEmpty ? this : '${this[0].toLowerCase()}${this.substring(1)}';
  }

  String removeHighlighting() {
    return this.replaceAll('[', '').replaceAll(']', '');
  }

  String removeLineBreakSequence() {
    return this.replaceAll(RegExp(r'(\r?\n|\r){2,}'), '\n');
  }
}
