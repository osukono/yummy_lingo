import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';

String? capitalize(String s) {
  return toBeginningOfSentenceCase(s);
}

List<TextSpan> buildPlayerText(String text) {
  final List<TextSpan> result = [];
  const String startGrammar = '[';
  const String endGrammar = ']';

  while (text.contains(startGrammar) && text.contains(endGrammar)) {
    final int startIndex = text.indexOf(startGrammar);
    final int endIndex = text.indexOf(endGrammar);
    result.add(TextSpan(text: text.substring(0, startIndex)));
    result.add(TextSpan(
      text: text.substring(startIndex + 1, endIndex),
      style: TextStyle(
          color:
              Palette.playerAccent.withOpacity(Constants.playerContentOpacity)),
    ));
    text = text.substring(endIndex + 1);
  }

  result.add(TextSpan(text: text));

  return result;
}
