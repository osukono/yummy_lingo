part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequestedEvent;
  const factory AuthEvent.signedIn() = _SignedInEvent;
  const factory AuthEvent.signedOut() = _SignedOutEvent;
  const factory AuthEvent.upgradeAnonymousUser() = _UpgradeAnonymousUserEvent;
}
