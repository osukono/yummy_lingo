import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wakelock/wakelock.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/player/dialog_control.dart';
import 'package:yummy_lingo/presentation/player/dialog_widget.dart';
import 'package:yummy_lingo/presentation/player/puzzle_control.dart';
import 'package:yummy_lingo/presentation/player/puzzle_widget.dart';
import 'package:yummy_lingo/presentation/player/text_widget.dart';
import 'package:yummy_lingo/presentation/player/transcript_widget.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/highlighted_icon.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';

class PlayerDialog extends StatefulWidget {
  PlayerDialog({Key? key}) : super(key: key);

  @override
  _PlayerDialogState createState() => _PlayerDialogState();
}

class _PlayerDialogState extends State<PlayerDialog> {
  late PlayerBloc bloc;
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    bloc.add(const PlayerEvent.visibilityChanged(visible: false));
    Wakelock.disable();
    super.dispose();
  }

  @override
  void initState() {
    bloc = BlocProvider.of<PlayerBloc>(context);
    bloc.add(const PlayerEvent.visibilityChanged(visible: true));
    if (bloc.state is PlayerData &&
        ((bloc.state as PlayerData).action == PlayerAction.playing ||
            (bloc.state as PlayerData).action == PlayerAction.interaction)) {
      Wakelock.enable();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return state.map(
          (PlayerData state) => _buildBody(state),
          initial: (_) {
            return Container(
              color: Palette.playerBackground,
            );
          },
        );
      },
    );
  }

  Widget _buildBody(PlayerData state) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Palette.playerBackground,
        // iconTheme: IconThemeData(color: AppColors.white.withOpacity(0.7)),
        iconTheme: const IconThemeData(color: Palette.playerBackground),
        elevation: 0,
        leading: IconButton(
          tooltip: t.navigation.close,
          // icon: const Icon(Icons.expand_more_rounded),
          icon: HighlightedIcon(
            icon: const Icon(Icons.expand_more_rounded),
            opacity: 0.3,
          ),
          onPressed: () async => Navigator.of(context).pop(),
        ),
        title: Text(
          '${state.level} • ${t.player.lesson} ${state.lesson.order + 1} • ${state.part}',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Palette.playerBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: _buildScreen(state)),
              _buildActions(state),
              GestureDetector(
                onVerticalDragEnd: (details) {
                  if (details.velocity.pixelsPerSecond.dy >= 200) {
                    AutoRouter.of(context).pop();
                  }
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Palette.playerControlBackground,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(Constants.d30 + Constants.baseQ),
                    ),
                  ),
                  child: _buildPlayerControl(state),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlayerControl(PlayerData state) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Constants.base,
        Constants.d30 + Constants.baseQ,
        Constants.base,
        Constants.base2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            state.lesson.title,
            style: Theme.of(context).textTheme.headline5,
            overflow: TextOverflow.ellipsis,
          ),
          const BoxDivider(base: Constants.baseH),
          LinearPercentIndicator(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            lineHeight: Constants.baseH,
            percent: state.progress,
            barRadius: const Radius.circular(4),
            backgroundColor: Palette.border,
            progressColor: Palette.primary,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _durationToMS(state.total),
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\u{2012}' + _durationToMS(state.remain),
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              )
            ],
          ),
          const BoxDivider(base: Constants.base),
          _buildSpeedControl(state),
          _buildControlButtons(state),
          // const BoxDivider(base: Constants.baseH),
          _buildVolumeControl(state),
          const BoxDivider(base: Constants.baseH),
        ],
      ),
    );
  }

  Widget _buildControlButtons(PlayerData state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AbsorbPointer(
          absorbing: !state.backwardEnabled,
          child: IconButton(
              padding: const EdgeInsets.all(Constants.base2),
              iconSize: Constants.base3,
              icon: Icon(
                Icons.skip_previous,
                color: state.backwardEnabled ? Palette.primary : Palette.icon,
              ),
              onPressed: () async {
                bloc.add(const PlayerEvent.backwardPressed());
              }),
        ),
        Container(
            width: Constants.base5,
            height: Constants.base5,
            child: _buildPlayButton(state)),
        AbsorbPointer(
          absorbing: !state.forwardEnabled,
          child: IconButton(
              padding: const EdgeInsets.all(Constants.base2),
              iconSize: Constants.base3,
              icon: Icon(
                Icons.skip_next,
                color: state.forwardEnabled ? Palette.primary : Palette.icon,
              ),
              onPressed: () async {
                bloc.add(const PlayerEvent.forwardPressed());
              }),
        )
      ],
    );
  }

  Widget _buildPlayButton(PlayerData state) {
    IconData icon;

    switch (state.action) {
      case PlayerAction.loading:
        return Container(
          width: Constants.base3,
          height: Constants.base3,
          child: Center(child: CircularProgress.primary()),
        );
      case PlayerAction.none:
      case PlayerAction.paused:
      case PlayerAction.failed:
        icon = Icons.play_arrow;
        break;
      case PlayerAction.playing:
        icon = Icons.pause;
        break;
      case PlayerAction.audition:
        icon = Icons.graphic_eq_rounded;
        break;
      case PlayerAction.interaction:
        icon = Icons.call_to_action_outlined;
        break;
      case PlayerAction.completed:
        icon = Icons.replay;
        break;
      default:
        icon = Icons.bug_report_outlined;
    }

    return FloatingActionButton(
      elevation: Constants.elevation,
      highlightElevation: Constants.elevation,
      child: Icon(
        icon,
        color: Palette.white,
      ),
      onPressed: () async {
        bloc.add(const PlayerEvent.controlButtonPressed());
      },
    );
  }

  Widget _buildVolumeControl(PlayerData state) {
    return Padding(
      padding:
          const EdgeInsets.only(left: Constants.base, right: Constants.base),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.volume_down,
            color: Palette.icon,
          ),
          // Text(t.player.volume),
          Expanded(
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Palette.primary.withOpacity(0.5),
                trackHeight: 1.2,
                // overlayShape: SliderComponentShape.noOverlay,
              ),
              child: Slider(
                divisions: 20,
                value: state.volume,
                onChanged: (value) {
                  bloc.add(PlayerEvent.volumeChanged(volume: value));
                },
              ),
            ),
          ),
          const Icon(
            Icons.volume_up,
            color: Palette.icon,
          ),
        ],
      ),
    );
  }

  Widget _buildSpeedControl(PlayerData state) {
    return Align(
        alignment: Alignment.centerRight,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 80),
          child: GestureDetector(
            onTap: () async {
              bloc.add(const PlayerEvent.changeSpeedPressed());
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Palette.border,
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.baseH)),
              ),
              padding: const EdgeInsets.all(Constants.base),
              child: Text(state.speed,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Palette.textMain,
                  )),
            ),
          ),
        ));
  }

  Widget _buildScreen(PlayerData state) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            Constants.base, Constants.base, Constants.base, 0),
        child: Screen(
          data: state.screen,
          scrollController: scrollController,
        ),
      ),
    );
  }

  Widget _buildActions(PlayerData state) {
    return Actions(data: state.screen);
  }

  String _durationToMS(Duration duration) {
    final String minutes = duration.inMinutes.toString().padLeft(2, '0');
    final String seconds =
        ((duration.inSeconds.remainder(60) / 10).floor() * 10)
            .toString()
            .padLeft(2, '0');

    return '$minutes:$seconds';
  }
}

class Screen extends StatelessWidget {
  final List<ScreenData> data;
  final ScrollController scrollController;

  const Screen({
    Key? key,
    required this.data,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Container();
    }

    final String session_id =
        (BlocProvider.of<PlayerBloc>(context).state as PlayerData).session_id;

    //https://stackoverflow.com/questions/43485529/programmatically-scrolling-to-the-end-of-a-listview
    Timer(const Duration(milliseconds: 100), () {
      try {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      } catch (e) {
        //
      }
    });

    return ListView.builder(
      controller: scrollController,
      itemCount: data.length,
      itemBuilder: (BuildContext c, int i) {
        return Container(
            margin: (i == data.length - 1)
                ? const EdgeInsets.only(bottom: 0)
                : const EdgeInsets.only(bottom: 8.0),
            child: data[i].map(
              transcript: (data) => TranscriptWidget(data: data),
              dialog: (data) => DialogWidget(
                data: data,
                session_id: session_id,
              ),
              puzzle: (data) => PuzzleWidget(
                data: data,
                session_id: session_id,
              ),
              text: (data) => TextWidget(data: data),
            ));
      },
    );
  }
}

class Actions extends StatelessWidget {
  final List<ScreenData> data;

  const Actions({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Container();
    }

    final String session_id =
        (BlocProvider.of<PlayerBloc>(context).state as PlayerData).session_id;

    return Container(
      padding: const EdgeInsets.fromLTRB(
          Constants.base, Constants.baseH, Constants.base, Constants.baseH),
      child: data.last.maybeMap(
        puzzle: (data) => PuzzleControl(data: data, session_id: session_id),
        // text: (data) => DialogControl(
        //     options: const [DialogOption.next()], session_id: session_id),
        // text: (data) => ControlContinue(session_id: session_id),
        dialog: (data) =>
            DialogControl(options: data.options, session_id: session_id),
        orElse: () => Container(),
      ),
    );
  }
}
