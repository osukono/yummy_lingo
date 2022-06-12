part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.reset() = _ResetEvent;

  const factory SignInEvent.userNameChanged(String userName) =
      _UserNameChangedEvent;

  const factory SignInEvent.emailChanged(String email) = _EmailChangedEvent;

  const factory SignInEvent.passwordChanged(String password) =
      _PasswordChangedEvent;

  const factory SignInEvent.showPasswordPressed() = _ShowPasswordPressedEvent;

  const factory SignInEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressedEvent;

  const factory SignInEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressedEvent;

  const factory SignInEvent.resetPasswordPressed() = _ResetPasswordPressedEvent;

  const factory SignInEvent.signInWithGooglePressed() =
      _SignInWithGooglePressedEvent;

  const factory SignInEvent.signInWithApplePressed() =
      _SignInWithApplePressedEvent;

  const factory SignInEvent.signInAnonymouslyPressed() =
      _SignInAnonymouslyPressedEvent;

  const factory SignInEvent.backButtonPressed() = _BackButtonPressedEvent;

  const factory SignInEvent.navigate(SignInScreen screen) = _NavigateEvent;

  const factory SignInEvent.showErrorMessage(String message) =
      _ShowErrorMessageEvent;

  const factory SignInEvent.showPrivacyPolicy() = _ShowPrivacyPolicyEvent;
}
