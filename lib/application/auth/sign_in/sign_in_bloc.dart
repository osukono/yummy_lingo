import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yummy_lingo/domain/auth/i_auth_facade.dart';
import 'package:yummy_lingo/domain/auth/value_objects.dart';
import 'package:yummy_lingo/domain/failures/auth_failure.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<_ResetEvent>(_onReset);
    on<_UserNameChangedEvent>(_onUserNameChanged);
    on<_EmailChangedEvent>(_onEmailChanged);
    on<_PasswordChangedEvent>(_onPasswordChanged);
    on<_ShowPasswordPressedEvent>(_onShowPasswordPressed);
    on<_RegisterWithEmailAndPasswordPressedEvent>(
        _onRegisterWithEmailAndPasswordPressed);
    on<_SignInWithEmailAndPasswordPressedEvent>(
        _onSignInWithEmailAndPasswordPressed);
    on<_ResetPasswordPressedEvent>(_onResetPasswordPressed);
    on<_SignInWithGooglePressedEvent>(_onSignInWithGooglePressed);
    on<_SignInWithApplePressedEvent>(_onSignInWithApplePressed);
    on<_SignInAnonymouslyPressedEvent>(_onSignInAnonymouslyPressed);
    on<_NavigateEvent>(_onNavigate);
    on<_BackButtonPressedEvent>(_onBackButtonPressed);
    on<_ShowErrorMessageEvent>(_onShowErrorMessage);
    on<_ShowPrivacyPolicyEvent>(_onShowPrivacyPolicy);
  }

  Future<void> _onReset(
    _ResetEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInState.initial());
  }

  Future<void> _onUserNameChanged(
    _UserNameChangedEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(
      userName: UserName(event.userName),
      eitherFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _onEmailChanged(
    _EmailChangedEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.email),
      eitherFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _onPasswordChanged(
    _PasswordChangedEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(
      password: Password(event.password),
      eitherFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _onShowPasswordPressed(
    _ShowPasswordPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  Future<void> _onRegisterWithEmailAndPasswordPressed(
    _RegisterWithEmailAndPasswordPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    if (state.isSubmitting) {
      return;
    }

    Either<AuthFailure, Unit>? failureOrSuccess;

    final isUserNameValid = state.emailAddress.isValid();
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isUserNameValid && isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        eitherFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
        userName: state.userName,
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      eitherFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  Future<void> _onSignInWithEmailAndPasswordPressed(
    _SignInWithEmailAndPasswordPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    if (state.isSubmitting) {
      return;
    }

    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
          isSubmitting: true, eitherFailureOrSuccessOption: none()));

      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      eitherFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  Future<void> _onResetPasswordPressed(
    _ResetPasswordPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    if (state.isSubmitting) {
      return;
    }

    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();

    if (isEmailValid) {
      emit(state.copyWith(
        isSubmitting: true,
        eitherFailureOrSuccessOption: none(),
      ));

      //ToDo: show please_check_your_mail notification
      failureOrSuccess =
          await _authFacade.resetPassword(emailAddress: state.emailAddress);
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      eitherFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  Future<void> _onSignInWithGooglePressed(
    _SignInWithGooglePressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    if (!state.isSubmitting) {
      await _signInWithProvider(_authFacade.signInWithGoogle, emit);
    }
  }

  Future<void> _onSignInWithApplePressed(
    _SignInWithApplePressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    if (!state.isSubmitting) {
      await _signInWithProvider(_authFacade.signInWithApple, emit);
    }
  }

  Future<void> _onSignInAnonymouslyPressed(
    _SignInAnonymouslyPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    if (!state.isSubmitting) {
      await _signInWithProvider(_authFacade.signInAnonymously, emit);
    }
  }

  Future<void> _onNavigate(
    _NavigateEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInState.initial().copyWith(
      screen: event.screen,
    ));
  }

  Future<void> _onBackButtonPressed(
    _BackButtonPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    switch (state.screen) {
      case SignInScreen.reset_password:
        emit(SignInState.initial().copyWith(
          screen: SignInScreen.sign_in,
        ));
        break;
      default:
        emit(SignInState.initial().copyWith(
          screen: SignInScreen.main,
        ));
    }
  }

  Future<void> _onShowErrorMessage(
    _ShowErrorMessageEvent event,
    Emitter<SignInState> emit,
  ) async {}

  Future<void> _onShowPrivacyPolicy(
    _ShowPrivacyPolicyEvent event,
    Emitter<SignInState> emit,
  ) async {
    launchUrl(Uri.https('yummylingo.com', '/privacy-policy'));
  }

  Future<void> _signInWithProvider(
    Future<Either<AuthFailure, Unit>> Function() forwardedCall,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(
      isSubmitting: true,
      eitherFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await forwardedCall();
    emit(state.copyWith(
      isSubmitting: false,
      eitherFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }
}
