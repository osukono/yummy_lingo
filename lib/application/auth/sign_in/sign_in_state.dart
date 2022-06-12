part of 'sign_in_bloc.dart';

enum SignInScreen { main, sign_in, sign_up, reset_password }

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required SignInScreen screen,
    required UserName userName,
    required EmailAddress emailAddress,
    required Password password,
    required bool showPassword,
    required String errorMessage,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> eitherFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        screen: SignInScreen.main,
        userName: UserName(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        showPassword: false,
        errorMessage: '',
        showErrorMessages: false,
        isSubmitting: false,
        eitherFailureOrSuccessOption: none(),
      );
}
