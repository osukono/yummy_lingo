
/*
 * Generated file. Do not edit.
 *
 * Locales: 3
 * Strings: 291 (97.0 per locale)
 *
 * Built on 2022-05-12 at 18:11 UTC
 */

import 'package:flutter/widgets.dart';

const AppLocale _baseLocale = AppLocale.en;
AppLocale _currLocale = _baseLocale;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale {
	en, // 'en' (base locale, fallback)
	ru, // 'ru'
	uk, // 'uk'
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn _t = _currLocale.translations;
_StringsEn get t => _t;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget.translations;
	}
}

class LocaleSettings {
	LocaleSettings._(); // no constructor

	/// Uses locale of the device, fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale useDeviceLocale() {
		final locale = AppLocaleUtils.findDeviceLocale();
		return setLocale(locale);
	}

	/// Sets locale
	/// Returns the locale which has been set.
	static AppLocale setLocale(AppLocale locale) {
		_currLocale = locale;
		_t = _currLocale.translations;

		if (WidgetsBinding.instance != null) {
			// force rebuild if TranslationProvider is used
			_translationProviderKey.currentState?.setLocale(_currLocale);
		}

		return _currLocale;
	}

	/// Sets locale using string tag (e.g. en_US, de-DE, fr)
	/// Fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale setLocaleRaw(String rawLocale) {
		final locale = AppLocaleUtils.parse(rawLocale);
		return setLocale(locale);
	}

	/// Gets current locale.
	static AppLocale get currentLocale {
		return _currLocale;
	}

	/// Gets base locale.
	static AppLocale get baseLocale {
		return _baseLocale;
	}

	/// Gets supported locales in string format.
	static List<String> get supportedLocalesRaw {
		return AppLocale.values
			.map((locale) => locale.languageTag)
			.toList();
	}

	/// Gets supported locales (as Locale objects) with base locale sorted first.
	static List<Locale> get supportedLocales {
		return AppLocale.values
			.map((locale) => locale.flutterLocale)
			.toList();
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
	AppLocaleUtils._(); // no constructor

	/// Returns the locale of the device as the enum type.
	/// Fallbacks to base locale.
	static AppLocale findDeviceLocale() {
		final String? deviceLocale = WidgetsBinding.instance?.window.locale.toLanguageTag();
		if (deviceLocale != null) {
			final typedLocale = _selectLocale(deviceLocale);
			if (typedLocale != null) {
				return typedLocale;
			}
		}
		return _baseLocale;
	}

	/// Returns the enum type of the raw locale.
	/// Fallbacks to base locale.
	static AppLocale parse(String rawLocale) {
		return _selectLocale(rawLocale) ?? _baseLocale;
	}
}

// context enums

// interfaces generated as mixins

// translation instances

late _StringsEn _translationsEn = _StringsEn.build();
late _StringsRu _translationsRu = _StringsRu.build();
late _StringsUk _translationsUk = _StringsUk.build();

// extensions for AppLocale

extension AppLocaleExtensions on AppLocale {

	/// Gets the translation instance managed by this library.
	/// [TranslationProvider] is using this instance.
	/// The plural resolvers are set via [LocaleSettings].
	_StringsEn get translations {
		switch (this) {
			case AppLocale.en: return _translationsEn;
			case AppLocale.ru: return _translationsRu;
			case AppLocale.uk: return _translationsUk;
		}
	}

	/// Gets a new translation instance.
	/// [LocaleSettings] has no effect here.
	/// Suitable for dependency injection and unit tests.
	///
	/// Usage:
	/// final t = AppLocale.en.build(); // build
	/// String a = t.my.path; // access
	_StringsEn build() {
		switch (this) {
			case AppLocale.en: return _StringsEn.build();
			case AppLocale.ru: return _StringsRu.build();
			case AppLocale.uk: return _StringsUk.build();
		}
	}

	String get languageTag {
		switch (this) {
			case AppLocale.en: return 'en';
			case AppLocale.ru: return 'ru';
			case AppLocale.uk: return 'uk';
		}
	}

	Locale get flutterLocale {
		switch (this) {
			case AppLocale.en: return const Locale.fromSubtags(languageCode: 'en');
			case AppLocale.ru: return const Locale.fromSubtags(languageCode: 'ru');
			case AppLocale.uk: return const Locale.fromSubtags(languageCode: 'uk');
		}
	}
}

extension StringAppLocaleExtensions on String {
	AppLocale? toAppLocale() {
		switch (this) {
			case 'en': return AppLocale.en;
			case 'ru': return AppLocale.ru;
			case 'uk': return AppLocale.uk;
			default: return null;
		}
	}
}

// wrappers

GlobalKey<_TranslationProviderState> _translationProviderKey = GlobalKey<_TranslationProviderState>();

class TranslationProvider extends StatefulWidget {
	TranslationProvider({required this.child}) : super(key: _translationProviderKey);

	final Widget child;

	@override
	_TranslationProviderState createState() => _TranslationProviderState();

	static _InheritedLocaleData of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget;
	}
}

class _TranslationProviderState extends State<TranslationProvider> {
	AppLocale locale = _currLocale;

	void setLocale(AppLocale newLocale) {
		setState(() {
			locale = newLocale;
		});
	}

	@override
	Widget build(BuildContext context) {
		return _InheritedLocaleData(
			locale: locale,
			child: widget.child,
		);
	}
}

class _InheritedLocaleData extends InheritedWidget {
	final AppLocale locale;
	Locale get flutterLocale => locale.flutterLocale; // shortcut
	final _StringsEn translations; // store translations to avoid switch call

	_InheritedLocaleData({required this.locale, required Widget child})
		: translations = locale.translations, super(child: child);

	@override
	bool updateShouldNotify(_InheritedLocaleData oldWidget) {
		return oldWidget.locale != locale;
	}
}

// pluralization feature not used

// helpers

final _localeRegex = RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');
AppLocale? _selectLocale(String localeRaw) {
	final match = _localeRegex.firstMatch(localeRaw);
	AppLocale? selected;
	if (match != null) {
		final language = match.group(1);
		final country = match.group(5);

		// match exactly
		selected = AppLocale.values
			.cast<AppLocale?>()
			.firstWhere((supported) => supported?.languageTag == localeRaw.replaceAll('_', '-'), orElse: () => null);

		if (selected == null && language != null) {
			// match language
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.startsWith(language) == true, orElse: () => null);
		}

		if (selected == null && country != null) {
			// match country
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.contains(country) == true, orElse: () => null);
		}
	}
	return selected;
}

// translations

// Path: <root>
class _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build();

	/// Access flat map
	dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsCommonEn common = _StringsCommonEn._(_root);
	late final _StringsCourseEn course = _StringsCourseEn._(_root);
	late final _StringsCoursesEn courses = _StringsCoursesEn._(_root);
	late final _StringsDialogEn dialog = _StringsDialogEn._(_root);
	late final _StringsLibraryEn library = _StringsLibraryEn._(_root);
	late final _StringsNavigationEn navigation = _StringsNavigationEn._(_root);
	late final _StringsPaymentEn payment = _StringsPaymentEn._(_root);
	late final _StringsPlayerEn player = _StringsPlayerEn._(_root);
	String get error => 'Something went wrong. Please try again later.';
	String get error_email_already_in_use => 'The email address is already in use by another account.';
	String get error_invalid_email => 'Invalid email format';
	String get name_is_empty => 'The name must not be empty';
	String get password_is_incorrect => 'Password should be at least 6 characters';
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
	String get back => 'Back';
	String get error_user_not_found => 'There is no user record corresponding to this identifier.';
	String get error_wrong_password => 'The password is invalid.';
	String get existing_user => 'Existing user?';
	String get log_in => 'Log in';
	String get login => 'Login';
	String get please_check_your_mail => 'We have e-mailed your password reset link!';
	String get reset_password => 'Reset password';
	String get reset_password_hint => 'Enter your email address and we will send you an email with password reset instructions';
	String get send_reset_link => 'Send';
	late final _StringsSignInEn sign_in = _StringsSignInEn._(_root);
	late final _StringsSignUpEn sign_up = _StringsSignUpEn._(_root);
	late final _StringsTopicEn topic = _StringsTopicEn._(_root);
	late final _StringsTutorialEn tutorial = _StringsTutorialEn._(_root);
}

// Path: common
class _StringsCommonEn {
	_StringsCommonEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get no_data => 'No data';
}

// Path: course
class _StringsCourseEn {
	_StringsCourseEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get button_continue => 'Continue';
	String get button_repeat => 'Repeat';
	String get button_update => 'Update';
	String get completed_heading => 'Congratulations!';
	String get completed_text => 'You have successfully completed the course. Review any lessons at any time or browse for more courses to study further.';
	String get delete_downloaded_media => 'Remove Downloads';
	String get delete_from_library => 'Remove from Library';
	String get description_less => 'hide';
	String get description_more => 'more';
	String get download_media => 'Download Media';
	String get downloading_heading => 'Downloading Media';
	String get downloading_text => 'It will take some time';
	String get error_storage_full => 'Your storage is almost full. Please try again later.';
	String get error_updating_heading => 'The course is under update';
	String get error_updating_text => 'Please try again later.';
	String get label_downloaded => 'DOWNLOADED';
	String get lessons => 'Lessons';
	String get progress => 'Course Progress';
	String get reset_progress => 'Reset Progress';
	String get unlock_lessons => 'Unlock all Lessons';
}

// Path: courses
class _StringsCoursesEn {
	_StringsCoursesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get button_add_to_library => 'Add';
	String get no_courses_heading => 'You\'ve Caught Up!';
	String get no_courses_text => 'Check out if there are more courses in other languages';
}

// Path: dialog
class _StringsDialogEn {
	_StringsDialogEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get button_cancel => 'Cancel';
	String get button_no => 'No';
	String get button_ok => 'OK';
	String get button_yes => 'Yes';
	String get confirmation => 'Are you sure?';
	String get no_internet_heading => 'Your device is not connected to the Internet';
	String get no_internet_text => 'Please try again later.';
}

// Path: library
class _StringsLibraryEn {
	_StringsLibraryEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get heading => 'Library';
	String get loading => 'Loading';
	String get log_out => 'Sign Out';
	String get no_courses_heading => 'Your library is empty';
	String get no_courses_text => 'Add some courses before you get started';
	String get sign_up => 'Create an Account';
	String get upgrade_anonymous_message => 'In order to continue, you must sign in';
}

// Path: navigation
class _StringsNavigationEn {
	_StringsNavigationEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get actions => 'Actions';
	String get back => 'Back';
	String get close => 'Close';
}

// Path: payment
class _StringsPaymentEn {
	_StringsPaymentEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get error_message => 'An error occurred, please try again later.';
	String get lesson_locked_button_buy => 'Buy';
	String get lesson_locked_button_cancel => 'Not now';
	String get lesson_locked_heading => 'Lesson locked';
	String get lesson_locked_message => 'To continue studying, get full access to the course';
	String get success_button_continue => 'Continue';
	String get success_message => 'Thank you for your payment. The course has been successfully unlocked.';
}

// Path: player
class _StringsPlayerEn {
	_StringsPlayerEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get button_close => 'Close';
	String get button_continue => 'Continue';
	String get button_start => 'Start';
	String get lesson => 'Lesson';
	String get part => 'Part';
	String get review => 'Review';
	late final _StringsPlayerSpeedEn speed = _StringsPlayerSpeedEn._(_root);
	String get volume => 'Volume';
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get button_continue => 'Continue';
	String get button_save => 'Save';
	String get course_language => 'Course Language';
	String get course_translation => 'Translation Language';
	String get heading => 'Select';
}

// Path: sign_in
class _StringsSignInEn {
	_StringsSignInEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get button_sign_up => 'Sign up';
	String get email => 'Email';
	String get forgot_password => 'Forgot your password?';
	String get name => 'Name';
	String get password => 'Password';
	String get privacy_policy_notification => 'By signing up you agree to our Privacy Policy';
}

// Path: sign_up
class _StringsSignUpEn {
	_StringsSignUpEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get anonymously => 'Continue as a Guest';
	String get heading => 'Sign up';
	String get with_apple => 'Sign in with Apple';
	String get with_email => 'Sign up with Email';
	String get with_google => 'Sign in with Google';
}

// Path: topic
class _StringsTopicEn {
	_StringsTopicEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get grammar => 'GRAMMAR';
}

// Path: tutorial
class _StringsTutorialEn {
	_StringsTutorialEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get courses => 'Each course has its level of difficulty. You can choose one based on the title or description.';
	String get lesson_completed => 'You have completed the lesson. Continue to keep your progress.';
	String get listening => 'Listen to the exercises. Try to memorize the examples.';
	String get practice => 'Translate sentences from the chunks.';
	late final _StringsTutorialWelcomeEn welcome = _StringsTutorialWelcomeEn._(_root);
}

// Path: player.speed
class _StringsPlayerSpeedEn {
	_StringsPlayerSpeedEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get faster => 'FAST';
	String get normal => 'NORMAL';
	String get slower => 'SLOW';
}

// Path: tutorial.welcome
class _StringsTutorialWelcomeEn {
	_StringsTutorialWelcomeEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get button_continue => 'Continue';
	String get heading => 'Welcome to';
	String get text => 'Learning has never been so easy!\nWith Yummy Lingo you will learn how to speak your dream language in no time';
}

// Path: <root>
class _StringsRu implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build();

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	@override late final Map<String, dynamic> _flatMap = _buildFlatMap();

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsCommonRu common = _StringsCommonRu._(_root);
	@override late final _StringsCourseRu course = _StringsCourseRu._(_root);
	@override late final _StringsCoursesRu courses = _StringsCoursesRu._(_root);
	@override late final _StringsDialogRu dialog = _StringsDialogRu._(_root);
	@override late final _StringsLibraryRu library = _StringsLibraryRu._(_root);
	@override late final _StringsNavigationRu navigation = _StringsNavigationRu._(_root);
	@override late final _StringsPaymentRu payment = _StringsPaymentRu._(_root);
	@override late final _StringsPlayerRu player = _StringsPlayerRu._(_root);
	@override String get error => 'Что-то пошло не так. Пожалуйста, повторите попытку позже.';
	@override String get error_email_already_in_use => 'Пользователь с такой почтой уже существует.';
	@override String get error_invalid_email => 'Неверный формат почты';
	@override String get name_is_empty => 'Имя обязательно для заполнения';
	@override String get password_is_incorrect => 'Пароль должен состоять не менее чем из 6 символов';
	@override late final _StringsSettingsRu settings = _StringsSettingsRu._(_root);
	@override String get back => 'Назад';
	@override String get error_user_not_found => 'Не удалось найти пользователя с указанным электронным адресом.';
	@override String get error_wrong_password => 'Неверный пароль.';
	@override String get existing_user => 'Уже зарегистрированы?';
	@override String get log_in => 'Войти';
	@override String get login => 'Вход';
	@override String get please_check_your_mail => 'Ссылка на сброс пароля была отправлена!';
	@override String get reset_password => 'Сбросить пароль';
	@override String get reset_password_hint => 'Введите адрес электронной почты, на который будет отправлена инструкция по восстановлению пароля';
	@override String get send_reset_link => 'Отправить';
	@override late final _StringsSignInRu sign_in = _StringsSignInRu._(_root);
	@override late final _StringsSignUpRu sign_up = _StringsSignUpRu._(_root);
	@override late final _StringsTopicRu topic = _StringsTopicRu._(_root);
	@override late final _StringsTutorialRu tutorial = _StringsTutorialRu._(_root);
}

// Path: common
class _StringsCommonRu implements _StringsCommonEn {
	_StringsCommonRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get no_data => 'Нет данных';
}

// Path: course
class _StringsCourseRu implements _StringsCourseEn {
	_StringsCourseRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get button_continue => 'Продолжить';
	@override String get button_repeat => 'Повторить';
	@override String get button_update => 'Обновить';
	@override String get completed_heading => 'Поздравляем!';
	@override String get completed_text => 'Вы успешно прошли курс. Для дальнейшего обучения вы можете повторить любой из пройденных уроков, или добавить новый.';
	@override String get delete_downloaded_media => 'Удалить загрузки';
	@override String get delete_from_library => 'Удалить из библиотеки';
	@override String get description_less => 'скрыть';
	@override String get description_more => 'ещё';
	@override String get download_media => 'Загрузить';
	@override String get downloading_heading => 'Загрузка файлов';
	@override String get downloading_text => 'Это займет некоторое время';
	@override String get error_storage_full => 'Ваш диск заполнен. Пожалуйста попробуйте позже.';
	@override String get error_updating_heading => 'На данный момент курс обновляется';
	@override String get error_updating_text => 'Пожалуйста, повторите попытку позже.';
	@override String get label_downloaded => 'ЗАГРУЖЕН';
	@override String get lessons => 'Уроки';
	@override String get progress => 'Мой прогресс';
	@override String get reset_progress => 'Начать курс заново';
	@override String get unlock_lessons => 'Разблокировать все уроки';
}

// Path: courses
class _StringsCoursesRu implements _StringsCoursesEn {
	_StringsCoursesRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get button_add_to_library => 'Добавить';
	@override String get no_courses_heading => 'На данный момент новых курсов нет';
	@override String get no_courses_text => 'Зайдите позже, чтобы проверить их наличие';
}

// Path: dialog
class _StringsDialogRu implements _StringsDialogEn {
	_StringsDialogRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get button_cancel => 'Отмена';
	@override String get button_no => 'Нет';
	@override String get button_ok => 'OK';
	@override String get button_yes => 'Да';
	@override String get confirmation => 'Вы уверены?';
	@override String get no_internet_heading => 'Ваше устройство не подключено к Интернету';
	@override String get no_internet_text => 'Пожалуйста, повторите попытку позже.';
}

// Path: library
class _StringsLibraryRu implements _StringsLibraryEn {
	_StringsLibraryRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get heading => 'Библиотека';
	@override String get loading => 'Загрузка';
	@override String get log_out => 'Выйти';
	@override String get no_courses_heading => 'Ваша библиотека пустая';
	@override String get no_courses_text => 'Прежде чем начать, добавьте несколько курсов';
	@override String get sign_up => 'Создать учетную запись';
	@override String get upgrade_anonymous_message => 'Для того чтобы продолжить, вам необходимо зарегистрироваться';
}

// Path: navigation
class _StringsNavigationRu implements _StringsNavigationEn {
	_StringsNavigationRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get actions => 'Действия';
	@override String get back => 'Назад';
	@override String get close => 'Закрыть';
}

// Path: payment
class _StringsPaymentRu implements _StringsPaymentEn {
	_StringsPaymentRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get error_message => 'Транзакция отклонена. Пожалуйста, повторите попытку позже.';
	@override String get lesson_locked_button_buy => 'Купить';
	@override String get lesson_locked_button_cancel => 'Позже';
	@override String get lesson_locked_heading => 'Урок заблокирован';
	@override String get lesson_locked_message => 'Сначала получите полный доступ к курсу';
	@override String get success_button_continue => 'Продолжить';
	@override String get success_message => 'Благодарим за покупку. Курс успешно разблокирован.';
}

// Path: player
class _StringsPlayerRu implements _StringsPlayerEn {
	_StringsPlayerRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get button_close => 'Закрыть';
	@override String get button_continue => 'Продолжить';
	@override String get button_start => 'Начать';
	@override String get lesson => 'Урок';
	@override String get part => 'Часть';
	@override String get review => 'Повторение';
	@override late final _StringsPlayerSpeedRu speed = _StringsPlayerSpeedRu._(_root);
	@override String get volume => 'Громкость';
}

// Path: settings
class _StringsSettingsRu implements _StringsSettingsEn {
	_StringsSettingsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get button_continue => 'Продолжить';
	@override String get button_save => 'Сохранить';
	@override String get course_language => 'Язык курса';
	@override String get course_translation => 'Язык перевода';
	@override String get heading => 'Выберите';
}

// Path: sign_in
class _StringsSignInRu implements _StringsSignInEn {
	_StringsSignInRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get button_sign_up => 'Зарегистрироваться';
	@override String get email => 'Email';
	@override String get forgot_password => 'Забыли пароль?';
	@override String get name => 'Имя';
	@override String get password => 'Пароль';
	@override String get privacy_policy_notification => 'Регистрируясь вы принимаете политику конфиденциальности';
}

// Path: sign_up
class _StringsSignUpRu implements _StringsSignUpEn {
	_StringsSignUpRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get anonymously => 'Войти как Гость';
	@override String get heading => 'Регистрация';
	@override String get with_apple => 'Войти c Apple';
	@override String get with_email => 'Регистрация с почтой';
	@override String get with_google => 'Войти через Google';
}

// Path: topic
class _StringsTopicRu implements _StringsTopicEn {
	_StringsTopicRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get grammar => 'ГРАММАТИКА';
}

// Path: tutorial
class _StringsTutorialRu implements _StringsTutorialEn {
	_StringsTutorialRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get courses => 'Курсы разделены по уровню сложности. Сделайте свой выбор в соответствии с их названием или описанием.';
	@override String get lesson_completed => 'Урок пройден. Продолжайте, чтобы поддерживать свой прогресс.';
	@override String get listening => 'Прослушайте упражнения. Постарайтесь запомнить примеры.';
	@override String get practice => 'Переведите предложения составляя их из блоков.';
	@override late final _StringsTutorialWelcomeRu welcome = _StringsTutorialWelcomeRu._(_root);
}

// Path: player.speed
class _StringsPlayerSpeedRu implements _StringsPlayerSpeedEn {
	_StringsPlayerSpeedRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get faster => 'БЫСТРО';
	@override String get normal => 'СРЕДНЕ';
	@override String get slower => 'МЕДЛЕННО';
}

// Path: tutorial.welcome
class _StringsTutorialWelcomeRu implements _StringsTutorialWelcomeEn {
	_StringsTutorialWelcomeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get button_continue => 'Продолжить';
	@override String get heading => 'Добро пожаловать в';
	@override String get text => 'Изучение языков никогда еще не было таким простым.\nС Yummy Lingo вы начнете разговаривать на иностранном языке в кратчайшие сроки.';
}

// Path: <root>
class _StringsUk implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsUk.build();

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	@override late final Map<String, dynamic> _flatMap = _buildFlatMap();

	@override late final _StringsUk _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsCommonUk common = _StringsCommonUk._(_root);
	@override late final _StringsCourseUk course = _StringsCourseUk._(_root);
	@override late final _StringsCoursesUk courses = _StringsCoursesUk._(_root);
	@override late final _StringsDialogUk dialog = _StringsDialogUk._(_root);
	@override late final _StringsLibraryUk library = _StringsLibraryUk._(_root);
	@override late final _StringsNavigationUk navigation = _StringsNavigationUk._(_root);
	@override late final _StringsPaymentUk payment = _StringsPaymentUk._(_root);
	@override late final _StringsPlayerUk player = _StringsPlayerUk._(_root);
	@override String get error => 'Щось пішло не так. Будь-ласка спробуйте пізніше.';
	@override String get error_email_already_in_use => 'Користувач із вказаною електронною адресою вже існує.';
	@override String get error_invalid_email => 'Невірний формат пошти';
	@override String get name_is_empty => 'Ім\'я є обов\'язковим для заповнення';
	@override String get password_is_incorrect => 'Пароль повинен містити не менше 6 символів';
	@override late final _StringsSettingsUk settings = _StringsSettingsUk._(_root);
	@override String get back => 'Назад';
	@override String get error_user_not_found => 'Користувача із вказаною електронною адресою не знайдено.';
	@override String get error_wrong_password => 'Невірний пароль.';
	@override String get existing_user => 'Вже зареєстровані?';
	@override String get log_in => 'Увійти';
	@override String get login => 'Вхід';
	@override String get please_check_your_mail => 'Посилання для зміни пароля надіслано на вашу електронну адресу!';
	@override String get reset_password => 'Відновити пароль';
	@override String get reset_password_hint => 'Введіть адресу електронної пошти, на яку буде надіслано інструкцію з відновлення паролю';
	@override String get send_reset_link => 'Надіслати';
	@override late final _StringsSignInUk sign_in = _StringsSignInUk._(_root);
	@override late final _StringsSignUpUk sign_up = _StringsSignUpUk._(_root);
	@override late final _StringsTopicUk topic = _StringsTopicUk._(_root);
	@override late final _StringsTutorialUk tutorial = _StringsTutorialUk._(_root);
}

// Path: common
class _StringsCommonUk implements _StringsCommonEn {
	_StringsCommonUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get no_data => 'Немає даних';
}

// Path: course
class _StringsCourseUk implements _StringsCourseEn {
	_StringsCourseUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get button_continue => 'Продовжити';
	@override String get button_repeat => 'Повторити';
	@override String get button_update => 'Оновити';
	@override String get completed_heading => 'Вітаємо!';
	@override String get completed_text => 'Ви успішно пройшли курс. Для подальшого навчання ви можете повторити будь-який з попередніх уроків, або додати новий.';
	@override String get delete_downloaded_media => 'Видалити завантаження';
	@override String get delete_from_library => 'Видалити з бібліотеки';
	@override String get description_less => 'сховати';
	@override String get description_more => 'ще';
	@override String get download_media => 'Завантажити';
	@override String get downloading_heading => 'Завантаження файлів';
	@override String get downloading_text => 'Це займе деякий час';
	@override String get error_storage_full => 'Ваш диск заповнений. Будь ласка спробуйте пізніше.';
	@override String get error_updating_heading => 'Курс оновлюється';
	@override String get error_updating_text => 'Будь ласка, спробуйте ще раз пізніше.';
	@override String get label_downloaded => 'ЗАВАНТАЖЕНО';
	@override String get lessons => 'Уроки';
	@override String get progress => 'Мій прогрес';
	@override String get reset_progress => 'Почати курс знову';
	@override String get unlock_lessons => 'Розблокувати усі уроки';
}

// Path: courses
class _StringsCoursesUk implements _StringsCoursesEn {
	_StringsCoursesUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get button_add_to_library => 'Додати';
	@override String get no_courses_heading => 'Нових курсів немає';
	@override String get no_courses_text => 'Ви можете переглянути наявність курсів в інших перекладах';
}

// Path: dialog
class _StringsDialogUk implements _StringsDialogEn {
	_StringsDialogUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get button_cancel => 'Відміна';
	@override String get button_no => 'Ні';
	@override String get button_ok => 'OK';
	@override String get button_yes => 'Так';
	@override String get confirmation => 'Ви впевнені?';
	@override String get no_internet_heading => 'Ваш пристрій не підключено до Інтернету';
	@override String get no_internet_text => 'Будь ласка, спробуйте ще раз пізніше.';
}

// Path: library
class _StringsLibraryUk implements _StringsLibraryEn {
	_StringsLibraryUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get heading => 'Бібліотека';
	@override String get loading => 'Завантаження';
	@override String get log_out => 'Вийти з аккаунта';
	@override String get no_courses_heading => 'Ваша бібліотека порожня';
	@override String get no_courses_text => 'Перш ніж почати, додайте декілька курсів';
	@override String get sign_up => 'Реєстрація';
	@override String get upgrade_anonymous_message => 'Для того щоб продовжити, вам необхідно зареєструватися';
}

// Path: navigation
class _StringsNavigationUk implements _StringsNavigationEn {
	_StringsNavigationUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get actions => 'Дії';
	@override String get back => 'Назад';
	@override String get close => 'Закрити';
}

// Path: payment
class _StringsPaymentUk implements _StringsPaymentEn {
	_StringsPaymentUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get error_message => 'Транзакція відхилена. Будь ласка, спробуйте ще раз пізніше.';
	@override String get lesson_locked_button_buy => 'Придбати';
	@override String get lesson_locked_button_cancel => 'Пізніше';
	@override String get lesson_locked_heading => 'Урок заблоковано';
	@override String get lesson_locked_message => 'Спочатку отримайте повний доступ до курсу';
	@override String get success_button_continue => 'Продовжити';
	@override String get success_message => 'Дякуємо за покупку. Курс успішно розблоковано.';
}

// Path: player
class _StringsPlayerUk implements _StringsPlayerEn {
	_StringsPlayerUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get button_close => 'Закрити';
	@override String get button_continue => 'Продовжити';
	@override String get button_start => 'Почати';
	@override String get lesson => 'Урок';
	@override String get part => 'Частина';
	@override String get review => 'Повторення';
	@override late final _StringsPlayerSpeedUk speed = _StringsPlayerSpeedUk._(_root);
	@override String get volume => 'Гучність';
}

// Path: settings
class _StringsSettingsUk implements _StringsSettingsEn {
	_StringsSettingsUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get button_continue => 'Продовжити';
	@override String get button_save => 'Зберегти';
	@override String get course_language => 'Мова курсу';
	@override String get course_translation => 'Мова перекладу';
	@override String get heading => 'Оберіть';
}

// Path: sign_in
class _StringsSignInUk implements _StringsSignInEn {
	_StringsSignInUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get button_sign_up => 'Зареєструватися';
	@override String get email => 'Email';
	@override String get forgot_password => 'Забули пароль?';
	@override String get name => 'Ім\'я';
	@override String get password => 'Пароль';
	@override String get privacy_policy_notification => 'Реєструючись ви приймаєте політику конфіденційності';
}

// Path: sign_up
class _StringsSignUpUk implements _StringsSignUpEn {
	_StringsSignUpUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get anonymously => 'Войти як Гість';
	@override String get heading => 'Реєстрація';
	@override String get with_apple => 'Увійти з Apple';
	@override String get with_email => 'Реєстрація з поштою';
	@override String get with_google => 'Увійти за допомогою Google';
}

// Path: topic
class _StringsTopicUk implements _StringsTopicEn {
	_StringsTopicUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get grammar => 'ГРАММАТИКА';
}

// Path: tutorial
class _StringsTutorialUk implements _StringsTutorialEn {
	_StringsTutorialUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get courses => 'Курси розділені за рівнем складності. Зробіть свій вибір згідно з їх назвою або описом.';
	@override String get lesson_completed => 'Вправу виконано. Продовжуйте, щоб підтримувати свій прогрес.';
	@override String get listening => 'Прослухайте вправи. Намагайтеся запам\'ятати приклади.';
	@override String get practice => 'Перекладіть речення складаючи їх з блоків.';
	@override late final _StringsTutorialWelcomeUk welcome = _StringsTutorialWelcomeUk._(_root);
}

// Path: player.speed
class _StringsPlayerSpeedUk implements _StringsPlayerSpeedEn {
	_StringsPlayerSpeedUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get faster => 'ШВИДКО';
	@override String get normal => 'ПОМІРНО';
	@override String get slower => 'ПОВІЛЬНО';
}

// Path: tutorial.welcome
class _StringsTutorialWelcomeUk implements _StringsTutorialWelcomeEn {
	_StringsTutorialWelcomeUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get button_continue => 'Продовжити';
	@override String get heading => 'Ласкаво просимо в';
	@override String get text => 'Вивчення мов ніколи ще не було таким простим.\nЗ Yummy Lingo ви навчитесь розмовляти іноземною мовою в найкоротший термін.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'common.no_data': 'No data',
			'course.button_continue': 'Continue',
			'course.button_repeat': 'Repeat',
			'course.button_update': 'Update',
			'course.completed_heading': 'Congratulations!',
			'course.completed_text': 'You have successfully completed the course. Review any lessons at any time or browse for more courses to study further.',
			'course.delete_downloaded_media': 'Remove Downloads',
			'course.delete_from_library': 'Remove from Library',
			'course.description_less': 'hide',
			'course.description_more': 'more',
			'course.download_media': 'Download Media',
			'course.downloading_heading': 'Downloading Media',
			'course.downloading_text': 'It will take some time',
			'course.error_storage_full': 'Your storage is almost full. Please try again later.',
			'course.error_updating_heading': 'The course is under update',
			'course.error_updating_text': 'Please try again later.',
			'course.label_downloaded': 'DOWNLOADED',
			'course.lessons': 'Lessons',
			'course.progress': 'Course Progress',
			'course.reset_progress': 'Reset Progress',
			'course.unlock_lessons': 'Unlock all Lessons',
			'courses.button_add_to_library': 'Add',
			'courses.no_courses_heading': 'You\'ve Caught Up!',
			'courses.no_courses_text': 'Check out if there are more courses in other languages',
			'dialog.button_cancel': 'Cancel',
			'dialog.button_no': 'No',
			'dialog.button_ok': 'OK',
			'dialog.button_yes': 'Yes',
			'dialog.confirmation': 'Are you sure?',
			'dialog.no_internet_heading': 'Your device is not connected to the Internet',
			'dialog.no_internet_text': 'Please try again later.',
			'library.heading': 'Library',
			'library.loading': 'Loading',
			'library.log_out': 'Sign Out',
			'library.no_courses_heading': 'Your library is empty',
			'library.no_courses_text': 'Add some courses before you get started',
			'library.sign_up': 'Create an Account',
			'library.upgrade_anonymous_message': 'In order to continue, you must sign in',
			'navigation.actions': 'Actions',
			'navigation.back': 'Back',
			'navigation.close': 'Close',
			'payment.error_message': 'An error occurred, please try again later.',
			'payment.lesson_locked_button_buy': 'Buy',
			'payment.lesson_locked_button_cancel': 'Not now',
			'payment.lesson_locked_heading': 'Lesson locked',
			'payment.lesson_locked_message': 'To continue studying, get full access to the course',
			'payment.success_button_continue': 'Continue',
			'payment.success_message': 'Thank you for your payment. The course has been successfully unlocked.',
			'player.button_close': 'Close',
			'player.button_continue': 'Continue',
			'player.button_start': 'Start',
			'player.lesson': 'Lesson',
			'player.part': 'Part',
			'player.review': 'Review',
			'player.speed.faster': 'FAST',
			'player.speed.normal': 'NORMAL',
			'player.speed.slower': 'SLOW',
			'player.volume': 'Volume',
			'error': 'Something went wrong. Please try again later.',
			'error_email_already_in_use': 'The email address is already in use by another account.',
			'error_invalid_email': 'Invalid email format',
			'name_is_empty': 'The name must not be empty',
			'password_is_incorrect': 'Password should be at least 6 characters',
			'settings.button_continue': 'Continue',
			'settings.button_save': 'Save',
			'settings.course_language': 'Course Language',
			'settings.course_translation': 'Translation Language',
			'settings.heading': 'Select',
			'back': 'Back',
			'error_user_not_found': 'There is no user record corresponding to this identifier.',
			'error_wrong_password': 'The password is invalid.',
			'existing_user': 'Existing user?',
			'log_in': 'Log in',
			'login': 'Login',
			'please_check_your_mail': 'We have e-mailed your password reset link!',
			'reset_password': 'Reset password',
			'reset_password_hint': 'Enter your email address and we will send you an email with password reset instructions',
			'send_reset_link': 'Send',
			'sign_in.button_sign_up': 'Sign up',
			'sign_in.email': 'Email',
			'sign_in.forgot_password': 'Forgot your password?',
			'sign_in.name': 'Name',
			'sign_in.password': 'Password',
			'sign_in.privacy_policy_notification': 'By signing up you agree to our Privacy Policy',
			'sign_up.anonymously': 'Continue as a Guest',
			'sign_up.heading': 'Sign up',
			'sign_up.with_apple': 'Sign in with Apple',
			'sign_up.with_email': 'Sign up with Email',
			'sign_up.with_google': 'Sign in with Google',
			'topic.grammar': 'GRAMMAR',
			'tutorial.courses': 'Each course has its level of difficulty. You can choose one based on the title or description.',
			'tutorial.lesson_completed': 'You have completed the lesson. Continue to keep your progress.',
			'tutorial.listening': 'Listen to the exercises. Try to memorize the examples.',
			'tutorial.practice': 'Translate sentences from the chunks.',
			'tutorial.welcome.button_continue': 'Continue',
			'tutorial.welcome.heading': 'Welcome to',
			'tutorial.welcome.text': 'Learning has never been so easy!\nWith Yummy Lingo you will learn how to speak your dream language in no time',
		};
	}
}

extension on _StringsRu {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'common.no_data': 'Нет данных',
			'course.button_continue': 'Продолжить',
			'course.button_repeat': 'Повторить',
			'course.button_update': 'Обновить',
			'course.completed_heading': 'Поздравляем!',
			'course.completed_text': 'Вы успешно прошли курс. Для дальнейшего обучения вы можете повторить любой из пройденных уроков, или добавить новый.',
			'course.delete_downloaded_media': 'Удалить загрузки',
			'course.delete_from_library': 'Удалить из библиотеки',
			'course.description_less': 'скрыть',
			'course.description_more': 'ещё',
			'course.download_media': 'Загрузить',
			'course.downloading_heading': 'Загрузка файлов',
			'course.downloading_text': 'Это займет некоторое время',
			'course.error_storage_full': 'Ваш диск заполнен. Пожалуйста попробуйте позже.',
			'course.error_updating_heading': 'На данный момент курс обновляется',
			'course.error_updating_text': 'Пожалуйста, повторите попытку позже.',
			'course.label_downloaded': 'ЗАГРУЖЕН',
			'course.lessons': 'Уроки',
			'course.progress': 'Мой прогресс',
			'course.reset_progress': 'Начать курс заново',
			'course.unlock_lessons': 'Разблокировать все уроки',
			'courses.button_add_to_library': 'Добавить',
			'courses.no_courses_heading': 'На данный момент новых курсов нет',
			'courses.no_courses_text': 'Зайдите позже, чтобы проверить их наличие',
			'dialog.button_cancel': 'Отмена',
			'dialog.button_no': 'Нет',
			'dialog.button_ok': 'OK',
			'dialog.button_yes': 'Да',
			'dialog.confirmation': 'Вы уверены?',
			'dialog.no_internet_heading': 'Ваше устройство не подключено к Интернету',
			'dialog.no_internet_text': 'Пожалуйста, повторите попытку позже.',
			'library.heading': 'Библиотека',
			'library.loading': 'Загрузка',
			'library.log_out': 'Выйти',
			'library.no_courses_heading': 'Ваша библиотека пустая',
			'library.no_courses_text': 'Прежде чем начать, добавьте несколько курсов',
			'library.sign_up': 'Создать учетную запись',
			'library.upgrade_anonymous_message': 'Для того чтобы продолжить, вам необходимо зарегистрироваться',
			'navigation.actions': 'Действия',
			'navigation.back': 'Назад',
			'navigation.close': 'Закрыть',
			'payment.error_message': 'Транзакция отклонена. Пожалуйста, повторите попытку позже.',
			'payment.lesson_locked_button_buy': 'Купить',
			'payment.lesson_locked_button_cancel': 'Позже',
			'payment.lesson_locked_heading': 'Урок заблокирован',
			'payment.lesson_locked_message': 'Сначала получите полный доступ к курсу',
			'payment.success_button_continue': 'Продолжить',
			'payment.success_message': 'Благодарим за покупку. Курс успешно разблокирован.',
			'player.button_close': 'Закрыть',
			'player.button_continue': 'Продолжить',
			'player.button_start': 'Начать',
			'player.lesson': 'Урок',
			'player.part': 'Часть',
			'player.review': 'Повторение',
			'player.speed.faster': 'БЫСТРО',
			'player.speed.normal': 'СРЕДНЕ',
			'player.speed.slower': 'МЕДЛЕННО',
			'player.volume': 'Громкость',
			'error': 'Что-то пошло не так. Пожалуйста, повторите попытку позже.',
			'error_email_already_in_use': 'Пользователь с такой почтой уже существует.',
			'error_invalid_email': 'Неверный формат почты',
			'name_is_empty': 'Имя обязательно для заполнения',
			'password_is_incorrect': 'Пароль должен состоять не менее чем из 6 символов',
			'settings.button_continue': 'Продолжить',
			'settings.button_save': 'Сохранить',
			'settings.course_language': 'Язык курса',
			'settings.course_translation': 'Язык перевода',
			'settings.heading': 'Выберите',
			'back': 'Назад',
			'error_user_not_found': 'Не удалось найти пользователя с указанным электронным адресом.',
			'error_wrong_password': 'Неверный пароль.',
			'existing_user': 'Уже зарегистрированы?',
			'log_in': 'Войти',
			'login': 'Вход',
			'please_check_your_mail': 'Ссылка на сброс пароля была отправлена!',
			'reset_password': 'Сбросить пароль',
			'reset_password_hint': 'Введите адрес электронной почты, на который будет отправлена инструкция по восстановлению пароля',
			'send_reset_link': 'Отправить',
			'sign_in.button_sign_up': 'Зарегистрироваться',
			'sign_in.email': 'Email',
			'sign_in.forgot_password': 'Забыли пароль?',
			'sign_in.name': 'Имя',
			'sign_in.password': 'Пароль',
			'sign_in.privacy_policy_notification': 'Регистрируясь вы принимаете политику конфиденциальности',
			'sign_up.anonymously': 'Войти как Гость',
			'sign_up.heading': 'Регистрация',
			'sign_up.with_apple': 'Войти c Apple',
			'sign_up.with_email': 'Регистрация с почтой',
			'sign_up.with_google': 'Войти через Google',
			'topic.grammar': 'ГРАММАТИКА',
			'tutorial.courses': 'Курсы разделены по уровню сложности. Сделайте свой выбор в соответствии с их названием или описанием.',
			'tutorial.lesson_completed': 'Урок пройден. Продолжайте, чтобы поддерживать свой прогресс.',
			'tutorial.listening': 'Прослушайте упражнения. Постарайтесь запомнить примеры.',
			'tutorial.practice': 'Переведите предложения составляя их из блоков.',
			'tutorial.welcome.button_continue': 'Продолжить',
			'tutorial.welcome.heading': 'Добро пожаловать в',
			'tutorial.welcome.text': 'Изучение языков никогда еще не было таким простым.\nС Yummy Lingo вы начнете разговаривать на иностранном языке в кратчайшие сроки.',
		};
	}
}

extension on _StringsUk {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'common.no_data': 'Немає даних',
			'course.button_continue': 'Продовжити',
			'course.button_repeat': 'Повторити',
			'course.button_update': 'Оновити',
			'course.completed_heading': 'Вітаємо!',
			'course.completed_text': 'Ви успішно пройшли курс. Для подальшого навчання ви можете повторити будь-який з попередніх уроків, або додати новий.',
			'course.delete_downloaded_media': 'Видалити завантаження',
			'course.delete_from_library': 'Видалити з бібліотеки',
			'course.description_less': 'сховати',
			'course.description_more': 'ще',
			'course.download_media': 'Завантажити',
			'course.downloading_heading': 'Завантаження файлів',
			'course.downloading_text': 'Це займе деякий час',
			'course.error_storage_full': 'Ваш диск заповнений. Будь ласка спробуйте пізніше.',
			'course.error_updating_heading': 'Курс оновлюється',
			'course.error_updating_text': 'Будь ласка, спробуйте ще раз пізніше.',
			'course.label_downloaded': 'ЗАВАНТАЖЕНО',
			'course.lessons': 'Уроки',
			'course.progress': 'Мій прогрес',
			'course.reset_progress': 'Почати курс знову',
			'course.unlock_lessons': 'Розблокувати усі уроки',
			'courses.button_add_to_library': 'Додати',
			'courses.no_courses_heading': 'Нових курсів немає',
			'courses.no_courses_text': 'Ви можете переглянути наявність курсів в інших перекладах',
			'dialog.button_cancel': 'Відміна',
			'dialog.button_no': 'Ні',
			'dialog.button_ok': 'OK',
			'dialog.button_yes': 'Так',
			'dialog.confirmation': 'Ви впевнені?',
			'dialog.no_internet_heading': 'Ваш пристрій не підключено до Інтернету',
			'dialog.no_internet_text': 'Будь ласка, спробуйте ще раз пізніше.',
			'library.heading': 'Бібліотека',
			'library.loading': 'Завантаження',
			'library.log_out': 'Вийти з аккаунта',
			'library.no_courses_heading': 'Ваша бібліотека порожня',
			'library.no_courses_text': 'Перш ніж почати, додайте декілька курсів',
			'library.sign_up': 'Реєстрація',
			'library.upgrade_anonymous_message': 'Для того щоб продовжити, вам необхідно зареєструватися',
			'navigation.actions': 'Дії',
			'navigation.back': 'Назад',
			'navigation.close': 'Закрити',
			'payment.error_message': 'Транзакція відхилена. Будь ласка, спробуйте ще раз пізніше.',
			'payment.lesson_locked_button_buy': 'Придбати',
			'payment.lesson_locked_button_cancel': 'Пізніше',
			'payment.lesson_locked_heading': 'Урок заблоковано',
			'payment.lesson_locked_message': 'Спочатку отримайте повний доступ до курсу',
			'payment.success_button_continue': 'Продовжити',
			'payment.success_message': 'Дякуємо за покупку. Курс успішно розблоковано.',
			'player.button_close': 'Закрити',
			'player.button_continue': 'Продовжити',
			'player.button_start': 'Почати',
			'player.lesson': 'Урок',
			'player.part': 'Частина',
			'player.review': 'Повторення',
			'player.speed.faster': 'ШВИДКО',
			'player.speed.normal': 'ПОМІРНО',
			'player.speed.slower': 'ПОВІЛЬНО',
			'player.volume': 'Гучність',
			'error': 'Щось пішло не так. Будь-ласка спробуйте пізніше.',
			'error_email_already_in_use': 'Користувач із вказаною електронною адресою вже існує.',
			'error_invalid_email': 'Невірний формат пошти',
			'name_is_empty': 'Ім\'я є обов\'язковим для заповнення',
			'password_is_incorrect': 'Пароль повинен містити не менше 6 символів',
			'settings.button_continue': 'Продовжити',
			'settings.button_save': 'Зберегти',
			'settings.course_language': 'Мова курсу',
			'settings.course_translation': 'Мова перекладу',
			'settings.heading': 'Оберіть',
			'back': 'Назад',
			'error_user_not_found': 'Користувача із вказаною електронною адресою не знайдено.',
			'error_wrong_password': 'Невірний пароль.',
			'existing_user': 'Вже зареєстровані?',
			'log_in': 'Увійти',
			'login': 'Вхід',
			'please_check_your_mail': 'Посилання для зміни пароля надіслано на вашу електронну адресу!',
			'reset_password': 'Відновити пароль',
			'reset_password_hint': 'Введіть адресу електронної пошти, на яку буде надіслано інструкцію з відновлення паролю',
			'send_reset_link': 'Надіслати',
			'sign_in.button_sign_up': 'Зареєструватися',
			'sign_in.email': 'Email',
			'sign_in.forgot_password': 'Забули пароль?',
			'sign_in.name': 'Ім\'я',
			'sign_in.password': 'Пароль',
			'sign_in.privacy_policy_notification': 'Реєструючись ви приймаєте політику конфіденційності',
			'sign_up.anonymously': 'Войти як Гість',
			'sign_up.heading': 'Реєстрація',
			'sign_up.with_apple': 'Увійти з Apple',
			'sign_up.with_email': 'Реєстрація з поштою',
			'sign_up.with_google': 'Увійти за допомогою Google',
			'topic.grammar': 'ГРАММАТИКА',
			'tutorial.courses': 'Курси розділені за рівнем складності. Зробіть свій вибір згідно з їх назвою або описом.',
			'tutorial.lesson_completed': 'Вправу виконано. Продовжуйте, щоб підтримувати свій прогрес.',
			'tutorial.listening': 'Прослухайте вправи. Намагайтеся запам\'ятати приклади.',
			'tutorial.practice': 'Перекладіть речення складаючи їх з блоків.',
			'tutorial.welcome.button_continue': 'Продовжити',
			'tutorial.welcome.heading': 'Ласкаво просимо в',
			'tutorial.welcome.text': 'Вивчення мов ніколи ще не було таким простим.\nЗ Yummy Lingo ви навчитесь розмовляти іноземною мовою в найкоротший термін.',
		};
	}
}
