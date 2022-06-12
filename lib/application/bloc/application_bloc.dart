import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:uuid/uuid.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';

part 'application_event.dart';
part 'application_state.dart';

part 'application_bloc.freezed.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(const _Initial()) {
    on<_ApplicationStartedEvent>(_onStarted);
    on<_ShowLessonLockedDialogEvent>(_onShowLessonLockedDialog);
    on<_ShowBuyCourseDialogEvent>(_onShowBuyCourseDialog);
    on<_ShowBuySuccessDialogEvent>(_onShowBuySuccessDialog);
    on<_ShowCourseCompletedDialogEvent>(_onShowCourseCompletedDialog);
    on<_ShowUpgradeAnonymousUserDialogEvent>(_onShowUpgradeAnonymousUserDialog);
    on<_ShowNoInternetConnectionDialogEvent>(_onShowNoInternetConnectionDialog);
  }

  Future<void> _onStarted(
    _ApplicationStartedEvent event,
    Emitter<ApplicationState> emit,
  ) async {}

  Future<void> _onShowLessonLockedDialog(
    _ShowLessonLockedDialogEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    emit(ApplicationState.showLessonLockedDialog(
      course: event.course,
      uuid: const Uuid().v1(),
    ));
  }

  Future<void> _onShowBuyCourseDialog(
    _ShowBuyCourseDialogEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    final db = getIt<MoorDB>();
    final Course course = await db.coursesDao.getById(event.course);

    final String productId = Platform.isAndroid
        ? course.android_product_id!
        : course.ios_product_id!;

    final bool available = await InAppPurchase.instance.isAvailable();

    if (!available) {
      debugPrint('InAppPurchase is not available');
      return;
    }

    final ProductDetailsResponse response =
        await InAppPurchase.instance.queryProductDetails({productId});

    if (response.notFoundIDs.isNotEmpty) {
      debugPrint('Product id ${response.notFoundIDs.first} not found');
      debugPrint(
          'Error (code: ${response.error?.code}, message: ${response.error?.message})');
      return;
    }

    final PurchaseParam purchaseParam =
        PurchaseParam(productDetails: response.productDetails.first);
    InAppPurchase.instance.buyNonConsumable(purchaseParam: purchaseParam);
  }

  Future<void> _onShowBuySuccessDialog(
    _ShowBuySuccessDialogEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    emit(ApplicationState.showPaymentSuccessDialog(
      result: event.result,
      uuid: const Uuid().v1(),
    ));
  }

  Future<void> _onShowCourseCompletedDialog(
    _ShowCourseCompletedDialogEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    emit(ApplicationState.showCourseCompletedDialog(
      course: event.course,
      uuid: const Uuid().v1(),
    ));
  }

  Future<void> _onShowUpgradeAnonymousUserDialog(
    _ShowUpgradeAnonymousUserDialogEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    emit(ApplicationState.showUpgradeAnonymousUserDialog(
      uuid: const Uuid().v1(),
    ));
  }

  Future<void> _onShowNoInternetConnectionDialog(
    _ShowNoInternetConnectionDialogEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    emit(ApplicationState.showNoInternetConnectionDialog(
      uuid: const Uuid().v1(),
    ));
  }
}
