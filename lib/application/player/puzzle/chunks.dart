import 'package:yummy_lingo/extensions.dart';

class Chunk {
  final int index;
  final String value;
  final String label;
  bool selected = false;
  bool isExtra;

  Chunk({
    required this.index,
    required this.value,
    required this.label,
    required this.isExtra,
  });

  void reset() => selected = false;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Chunk &&
          runtimeType == other.runtimeType &&
          index == other.index &&
          value == other.value &&
          label == other.label &&
          isExtra == other.isExtra;

  @override
  int get hashCode =>
      index.hashCode ^ value.hashCode ^ label.hashCode ^ isExtra.hashCode;

  @override
  String toString() {
    return 'Chunk{$index:$value($label)}';
  }
}

List<Chunk> buildExtraChunks(String extra) => extra
    .split(RegExp(','))
    .map((e) => e.trim())
    .map((e) => Chunk(
          index: -1,
          value: e,
          label: e,
          isExtra: true,
        ))
    .toList();

List<Chunk> buildChunks(String text, String? chunks, String? capitalized) {
  text = text.replaceAll(RegExp('\\['), '').replaceAll(RegExp('\\]'), '');
  final List<Chunk> _chunks = [];

  final List<String> splitted = chunks != null
      ? chunks.split(RegExp('\\|'))
      : text.split(RegExp(
          '(?<!-|(^| )(in|at|on(?! the | a | an )|to)|(^| )(my|his|its|our|their|your)|^the| the|^a| a|^an| an|\\d+) ',
          caseSensitive: false));

  for (int i = 0; i < splitted.length; i++) {
    String value = splitted[i].trim();

    String label = value.replaceAll(RegExp('- |\\.|,|!|\\?|: |;'), '');

    if (i > 0) {
      value = ' ' + value;
    }

    final List<String> capitalizedWords = capitalized != null
        ? capitalized.split(RegExp(',')).map((e) => e.trim()).toList()
        : [];

    if (capitalizedWords.firstWhereOrNull((element) =>
            label.startsWith(RegExp("$element\$|$element'|$element "))) ==
        null) {
      //ToDo: hardcoded
      if (!label.startsWith(RegExp("I\$|I'|I "))) {
        label = label.deCapitalize();
      }
    }

    _chunks.add(Chunk(
      index: i,
      value: value,
      label: label,
      isExtra: false,
    ));
  }

  return _chunks;
}
