import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/application/player/puzzle/bloc/puzzle_bloc.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';
import 'package:yummy_lingo/presentation/widgets/text_units.dart';

class PuzzleControl extends StatelessWidget {
  final PuzzleData data;
  final String session_id;

  const PuzzleControl({
    Key? key,
    required this.data,
    required this.session_id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PuzzleBloc, PuzzleState>(
      bloc: data.bloc,
      listener: (context, state) {
        state.maybeMap(
          (value) {
            if (value.solved) {
              data.bloc.close();
              BlocProvider.of<PlayerBloc>(context)
                  .add(PlayerEvent.next(session_id: session_id));
            }
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.map(
          (value) => buildBody(context, value),
          initial: (_) => Container(),
        );
      },
    );
  }

  Widget buildBody(BuildContext context, PuzzleDataState data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (data.solved == false && data.text.isNotEmpty)
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: Constants.playerFontSize,
                color: Palette.playerPrimary
                    .withOpacity(Constants.playerContentOpacity),
              ),
              children: buildPlayerText(data.text),
            ),
          ),
        if (data.solved == false) const BoxDivider(base: Constants.baseH),
        if (data.solved == false)
          Wrap(
            spacing: 10.0,
            verticalDirection: VerticalDirection.down,
            // alignment: WrapAlignment.center,
            children: data.chunks
                // .where((chunk) => !chunk.selected)
                .map((chunk) => Visibility(
                      visible: !chunk.selected,
                      maintainAnimation: true,
                      maintainSize: true,
                      maintainState: true,
                      child: OutlinedButton(
                        style: PlayerButtonStyle(
                            color: data.errorOption.toNullable() == chunk
                                ? Palette.playerDisabled
                                : Palette.playerPrimary),
                        child: Text(chunk.label),
                        onPressed: () async {
                          this.data.bloc.add(
                                PuzzleEvent.chunkPressed(chunk: chunk),
                              );
                        },
                      ),
                    ))
                .toList(),
          )
      ],
    );
  }
}
