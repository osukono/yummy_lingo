part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.started() = _ApplicationStartedEvent;

  const factory ApplicationEvent.showLessonLockedDialog({
    required String course,
  }) = _ShowLessonLockedDialogEvent;

  const factory ApplicationEvent.showBuyCourseDialog({
    required String course,
  }) = _ShowBuyCourseDialogEvent;

  const factory ApplicationEvent.showBuySuccessDialog({
    required bool result,
  }) = _ShowBuySuccessDialogEvent;

  const factory ApplicationEvent.showCourseCompletedDialog({
    required String course,
  }) = _ShowCourseCompletedDialogEvent;

  const factory ApplicationEvent.showUpgradeAnonymousUserDialog() =
      _ShowUpgradeAnonymousUserDialogEvent;

  const factory ApplicationEvent.showNoInternetConnectionDialog() =
      _ShowNoInternetConnectionDialogEvent;
}
