import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/auth/auth_bloc.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/application/library/library_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/listeners.dart';
import 'package:yummy_lingo/presentation/pages/library_view.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);

    return MultiBlocListener(
      listeners: [
        const BlocListener<ApplicationBloc, ApplicationState>(
          listener: applicationListener,
        ),
        BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) {
              BlocProvider.of<PlayerBloc>(context)
                  .add(const PlayerEvent.reset());

              AutoRouter.of(context).popUntilRoot();
              AutoRouter.of(context).replace(SignInPageRoute());
            },
            orElse: () {},
          );
        }),
      ],
      child: BlocProvider.value(
        value: BlocProvider.of<LibraryBloc>(context)
          ..add(const LibraryEvent.load()),
        child: const LibraryView(),
      ),
    );
  }
}
