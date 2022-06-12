import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/application/player/puzzle/bloc/puzzle_bloc.dart';
import 'package:yummy_lingo/presentation/player/transcript.dart';

class PuzzleWidget extends StatelessWidget {
  final PuzzleData data;
  final String session_id;

  const PuzzleWidget({
    Key? key,
    required this.data,
    required this.session_id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PuzzleBloc, PuzzleState>(
      bloc: data.bloc,
      builder: (context, state) {
        return state.map(
          (value) => buildBody(context, value),
          initial: (_) => Container(),
        );
      },
    );
  }

  Widget buildBody(BuildContext context, PuzzleDataState data) {
    return Visibility(
      visible: data.solved,
      child: Transcript(
        text: data.text,
        translation: false,
      ),
    );
  }
}
