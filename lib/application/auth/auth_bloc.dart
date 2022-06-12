import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yummy_lingo/domain/auth/domain_user.dart';
import 'package:yummy_lingo/domain/auth/i_auth_facade.dart';
import 'package:yummy_lingo/infrastructure/firebase/languages_repository.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<_AuthCheckRequestedEvent>(_onAuthCheckRequested);
    on<_SignedInEvent>(_onSignedIn);
    on<_SignedOutEvent>(_onSignedOut);
    on<_UpgradeAnonymousUserEvent>(_onUpgradeAnonymousUser);
  }

  @override
  void onEvent(AuthEvent event) {
    super.onEvent(event);
    debugPrint(event.toString());
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);
    debugPrint(transition.toString());
  }

  Future<void> _onAuthCheckRequested(
    _AuthCheckRequestedEvent event,
    Emitter<AuthState> emit,
  ) async {
    final userOption = await _authFacade.getSignedInUser();

    if (userOption.isNone()) {
      emit(const AuthState.unauthenticated());
    } else {
      try {
        await loadUserSettings();
        await LanguagesRepository.get.load();
      } catch (e) {
        debugPrint(e.toString());
      }

      emit(const AuthState.authenticated());
    }
  }

  Future<void> _onSignedIn(
    _SignedInEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await loadUserSettings();
      await LanguagesRepository.get.load();

      emit(const AuthState.authenticated());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onSignedOut(
    _SignedOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    await Preferences.get.remove(Preferences.LANGUAGE_LEARN_ID);
    await Preferences.get.remove(Preferences.LANGUAGE_SPEAK_ID);

    await _authFacade.signOut();

    emit(const AuthState.unauthenticated());
  }

  Future<void> _onUpgradeAnonymousUser(
    _UpgradeAnonymousUserEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.unauthenticated());
  }

  Future<void> loadUserSettings() async {
    (await _authFacade.loadUserRecord()).fold(
      (_) => {},
      (DomainUser user) {
        if (user.language != null)
          Preferences.get.setString(
            Preferences.LANGUAGE_LEARN_ID,
            user.language,
          );
        if (user.translation != null)
          Preferences.get.setString(
            Preferences.LANGUAGE_SPEAK_ID,
            user.translation,
          );
      },
    );
  }
}
