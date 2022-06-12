import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';

class DialogControl extends StatelessWidget {
  final List<DialogOption> options;
  final String session_id;

  const DialogControl({
    Key? key,
    required this.options,
    required this.session_id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: options
              .map((e) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: OutlinedButton(
                        style: PlayerButtonStyle(color: Palette.playerPrimary),
                        child: Text(t[e.map(
                          next: (_) => 'player.button_continue',
                          start: (_) => 'player.button_continue',
                          forward: (_) => 'player.button_continue',
                          close: (_) => 'player.button_close',
                        )]),
                        onPressed: () async {
                          e.map(
                            next: (_) {
                              BlocProvider.of<PlayerBloc>(context).add(
                                  PlayerEvent.next(session_id: session_id));
                            },
                            start: (_) {
                              BlocProvider.of<PlayerBloc>(context).add(
                                  PlayerEvent.next(session_id: session_id));
                            },
                            forward: (_) {
                              BlocProvider.of<PlayerBloc>(context)
                                  .add(const PlayerEvent.forwardPressed());
                            },
                            close: (_) {
                              AutoRouter.of(context).pop();
                            },
                          );
                        },
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
