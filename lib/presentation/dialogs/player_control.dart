import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';

class PlayerControl extends StatefulWidget {
  PlayerControl({
    Key? key,
  }) : super(key: key);

  @override
  _PlayerControlState createState() => _PlayerControlState();
}

class _PlayerControlState extends State<PlayerControl> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return state.map(
          (PlayerData state) => buildBody(state),
          initial: (_) => Container(
            color: Colors.white,
            height: 0,
          ),
        );
      },
    );
  }

  Widget buildBody(PlayerData state) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey[100]!))),
      child: Material(
        color: Colors.white,
        child: ListTile(
          contentPadding: const EdgeInsets.only(
            left: Constants.base,
            right: Constants.base,
          ),
          onTap: () async {
            if (!BlocProvider.of<PlayerBloc>(context).visible) {
              AutoRouter.of(context).push(PlayerDialogRoute());
            }
          },
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: SvgPicture.network(
              state.course.image!,
              fit: BoxFit.cover,
              width: Constants.base6,
              height: Constants.base6 * 9 / 16,
            ),
          ),
          title: Text(
            state.lesson.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline5,
          ),
          trailing: SizedBox(
            width: Constants.d40,
            height: Constants.d40,
            child: _buildControlButton(state),
          ),
        ),
      ),
    );
  }

  Widget _buildControlButton(PlayerData state) {
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

    return Container(
      decoration: const BoxDecoration(
        color: Palette.primary,
        borderRadius: BorderRadius.all(Radius.circular(Constants.d20)),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Palette.white,
        ),
        onPressed: () async {
          BlocProvider.of<PlayerBloc>(context)
              .add(const PlayerEvent.controlButtonPressed());
        },
      ),
    );
  }
}
