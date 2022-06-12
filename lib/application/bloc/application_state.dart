part of 'application_bloc.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState.initial() = _Initial;

  const factory ApplicationState.showPaymentSuccessDialog({
    required bool result,
    required String uuid,
  }) = _ShowBuySuccessDialog;

  const factory ApplicationState.showCourseCompletedDialog({
    required String course,
    required String uuid,
  }) = _ShowCourseCompletedDialog;

  const factory ApplicationState.showLessonLockedDialog({
    required String course,
    required String uuid,
  }) = _ShowLessonLockedDialog;

  const factory ApplicationState.showUpgradeAnonymousUserDialog({
    required String uuid,
  }) = _ShowUpgradeAnonymousUserDialog;

  const factory ApplicationState.showNoInternetConnectionDialog({
    required String uuid,
  }) = _ShowNoInternetConnectionDialog;
}
