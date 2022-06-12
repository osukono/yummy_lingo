import 'package:flutter/widgets.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/presentation/player/transcript.dart';

class TranscriptWidget extends StatelessWidget {
  final TranscriptData data;

  const TranscriptWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transcript(
      text: data.text,
      translation: data.translation,
    );
  }
}
