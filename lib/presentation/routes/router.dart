import 'package:auto_route/auto_route.dart';
import 'package:yummy_lingo/presentation/pages/course_details_page.dart';
import 'package:yummy_lingo/presentation/pages/courses_page.dart';
import 'package:yummy_lingo/presentation/pages/library_page.dart';
import 'package:yummy_lingo/presentation/pages/my_course_page.dart';
import 'package:yummy_lingo/presentation/pages/select_language_page.dart';
import 'package:yummy_lingo/presentation/pages/settings_page.dart';
import 'package:yummy_lingo/presentation/pages/sign_in_page.dart';
import 'package:yummy_lingo/presentation/pages/splash_page.dart';
// import 'package:yummy_lingo/presentation/tutorial_page.dart';
import 'package:yummy_lingo/presentation/player/player_dialog.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    // MaterialRoute(page: TutorialPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: LibraryPage),
    MaterialRoute(page: MyCoursePage),
    MaterialRoute(page: CoursesPage),
    MaterialRoute(page: CourseDetailsPage),
    MaterialRoute(page: SettingsPage),
    MaterialRoute(page: SelectLanguagePage, fullscreenDialog: true),
    MaterialRoute(page: PlayerDialog, fullscreenDialog: true),
  ],
)
class $AppRouter {}
