// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/cupertino.dart' as _i12;
import 'package:flutter/material.dart' as _i11;

import '../../domain/enums.dart' as _i15;
import '../../infrastructure/moor/daos/courses_dao.dart' as _i14;
import '../../infrastructure/moor/daos/my_courses_dao.dart' as _i13;
import '../../infrastructure/moor/moor_database.dart' as _i16;
import '../pages/course_details_page.dart' as _i6;
import '../pages/courses_page.dart' as _i5;
import '../pages/library_page.dart' as _i3;
import '../pages/my_course_page.dart' as _i4;
import '../pages/select_language_page.dart' as _i8;
import '../pages/settings_page.dart' as _i7;
import '../pages/sign_in_page.dart' as _i2;
import '../pages/splash_page.dart' as _i1;
import '../player/player_dialog.dart' as _i9;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignInPageRouteArgs>(
          orElse: () => const SignInPageRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage(key: args.key));
    },
    LibraryPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LibraryPage());
    },
    MyCoursePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyCoursePageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.MyCoursePage(
              key: args.key, myCourseEntry: args.myCourseEntry));
    },
    CoursesPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CoursesPage());
    },
    CourseDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailsPageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.CourseDetailsPage(
              key: args.key, courseEntry: args.courseEntry));
    },
    SettingsPageRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsPageRouteArgs>(
          orElse: () => const SettingsPageRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SettingsPage(
              key: args.key, onLanguageSelected: args.onLanguageSelected));
    },
    SelectLanguagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SelectLanguagePageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.SelectLanguagePage(
              key: args.key,
              category: args.category,
              language: args.language,
              onLanguageSelected: args.onLanguageSelected),
          fullscreenDialog: true);
    },
    PlayerDialogRoute.name: (routeData) {
      final args = routeData.argsAs<PlayerDialogRouteArgs>(
          orElse: () => const PlayerDialogRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.PlayerDialog(key: args.key),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashPageRoute.name, path: '/'),
        _i10.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i10.RouteConfig(LibraryPageRoute.name, path: '/library-page'),
        _i10.RouteConfig(MyCoursePageRoute.name, path: '/my-course-page'),
        _i10.RouteConfig(CoursesPageRoute.name, path: '/courses-page'),
        _i10.RouteConfig(CourseDetailsPageRoute.name,
            path: '/course-details-page'),
        _i10.RouteConfig(SettingsPageRoute.name, path: '/settings-page'),
        _i10.RouteConfig(SelectLanguagePageRoute.name,
            path: '/select-language-page'),
        _i10.RouteConfig(PlayerDialogRoute.name, path: '/player-dialog')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i10.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i10.PageRouteInfo<SignInPageRouteArgs> {
  SignInPageRoute({_i12.Key? key})
      : super(SignInPageRoute.name,
            path: '/sign-in-page', args: SignInPageRouteArgs(key: key));

  static const String name = 'SignInPageRoute';
}

class SignInPageRouteArgs {
  const SignInPageRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'SignInPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LibraryPage]
class LibraryPageRoute extends _i10.PageRouteInfo<void> {
  const LibraryPageRoute()
      : super(LibraryPageRoute.name, path: '/library-page');

  static const String name = 'LibraryPageRoute';
}

/// generated route for
/// [_i4.MyCoursePage]
class MyCoursePageRoute extends _i10.PageRouteInfo<MyCoursePageRouteArgs> {
  MyCoursePageRoute({_i12.Key? key, required _i13.MyCourseEntry myCourseEntry})
      : super(MyCoursePageRoute.name,
            path: '/my-course-page',
            args:
                MyCoursePageRouteArgs(key: key, myCourseEntry: myCourseEntry));

  static const String name = 'MyCoursePageRoute';
}

class MyCoursePageRouteArgs {
  const MyCoursePageRouteArgs({this.key, required this.myCourseEntry});

  final _i12.Key? key;

  final _i13.MyCourseEntry myCourseEntry;

  @override
  String toString() {
    return 'MyCoursePageRouteArgs{key: $key, myCourseEntry: $myCourseEntry}';
  }
}

/// generated route for
/// [_i5.CoursesPage]
class CoursesPageRoute extends _i10.PageRouteInfo<void> {
  const CoursesPageRoute()
      : super(CoursesPageRoute.name, path: '/courses-page');

  static const String name = 'CoursesPageRoute';
}

/// generated route for
/// [_i6.CourseDetailsPage]
class CourseDetailsPageRoute
    extends _i10.PageRouteInfo<CourseDetailsPageRouteArgs> {
  CourseDetailsPageRoute({_i12.Key? key, required _i14.CourseEntry courseEntry})
      : super(CourseDetailsPageRoute.name,
            path: '/course-details-page',
            args:
                CourseDetailsPageRouteArgs(key: key, courseEntry: courseEntry));

  static const String name = 'CourseDetailsPageRoute';
}

class CourseDetailsPageRouteArgs {
  const CourseDetailsPageRouteArgs({this.key, required this.courseEntry});

  final _i12.Key? key;

  final _i14.CourseEntry courseEntry;

  @override
  String toString() {
    return 'CourseDetailsPageRouteArgs{key: $key, courseEntry: $courseEntry}';
  }
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsPageRoute extends _i10.PageRouteInfo<SettingsPageRouteArgs> {
  SettingsPageRoute({_i12.Key? key, Function? onLanguageSelected})
      : super(SettingsPageRoute.name,
            path: '/settings-page',
            args: SettingsPageRouteArgs(
                key: key, onLanguageSelected: onLanguageSelected));

  static const String name = 'SettingsPageRoute';
}

class SettingsPageRouteArgs {
  const SettingsPageRouteArgs({this.key, this.onLanguageSelected});

  final _i12.Key? key;

  final Function? onLanguageSelected;

  @override
  String toString() {
    return 'SettingsPageRouteArgs{key: $key, onLanguageSelected: $onLanguageSelected}';
  }
}

/// generated route for
/// [_i8.SelectLanguagePage]
class SelectLanguagePageRoute
    extends _i10.PageRouteInfo<SelectLanguagePageRouteArgs> {
  SelectLanguagePageRoute(
      {_i12.Key? key,
      required _i15.LanguageCategory category,
      required String language,
      required dynamic Function(_i16.Language) onLanguageSelected})
      : super(SelectLanguagePageRoute.name,
            path: '/select-language-page',
            args: SelectLanguagePageRouteArgs(
                key: key,
                category: category,
                language: language,
                onLanguageSelected: onLanguageSelected));

  static const String name = 'SelectLanguagePageRoute';
}

class SelectLanguagePageRouteArgs {
  const SelectLanguagePageRouteArgs(
      {this.key,
      required this.category,
      required this.language,
      required this.onLanguageSelected});

  final _i12.Key? key;

  final _i15.LanguageCategory category;

  final String language;

  final dynamic Function(_i16.Language) onLanguageSelected;

  @override
  String toString() {
    return 'SelectLanguagePageRouteArgs{key: $key, category: $category, language: $language, onLanguageSelected: $onLanguageSelected}';
  }
}

/// generated route for
/// [_i9.PlayerDialog]
class PlayerDialogRoute extends _i10.PageRouteInfo<PlayerDialogRouteArgs> {
  PlayerDialogRoute({_i12.Key? key})
      : super(PlayerDialogRoute.name,
            path: '/player-dialog', args: PlayerDialogRouteArgs(key: key));

  static const String name = 'PlayerDialogRoute';
}

class PlayerDialogRouteArgs {
  const PlayerDialogRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'PlayerDialogRouteArgs{key: $key}';
  }
}
