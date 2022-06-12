import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:yummy_lingo/application/auth/auth_bloc.dart';
import 'package:yummy_lingo/application/auth/sign_in/sign_in_bloc.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';
import 'package:yummy_lingo/main.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/dialogs/alert_dialog.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';
import 'package:yummy_lingo/presentation/widgets/form_fields.dart';
import 'package:yummy_lingo/presentation/widgets/highlighted_icon.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        _authBlocListener(context, state);
      },
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          _singInBlocListener(context, state);
        },
        builder: (context, state) {
          return _buildBody(state);
        },
      ),
    );
  }

  void _authBlocListener(context, state) {
    state.maybeMap(
      authenticated: (_) async {
        final String? language =
            await Preferences.get.getString(Preferences.LANGUAGE_LEARN_ID);
        final String? translation =
            await Preferences.get.getString(Preferences.LANGUAGE_LEARN_ID);

        BlocProvider.of<SignInBloc>(context).add(const SignInEvent.reset());

        if (language == null || translation == null)
          AutoRouter.of(context).replace(SettingsPageRoute());
        else
          AutoRouter.of(context).replace(const LibraryPageRoute());
      },
      orElse: () => {},
    );
  }

  void _singInBlocListener(context, state) {
    state.eitherFailureOrSuccessOption.fold(
      () {},
      (either) => either.fold(
        (failure) {
          debugPrint('eitherFailureOrSuccessOption: $failure');
          final String? errorMessage = failure.map(
            cancelledByUser: (_) => null,
            serverError: (_) => t.error,
            emailAlreadyInUse: (_) => t.error_email_already_in_use,
            userNotFound: (_) => t.error_user_not_found,
            wrongPassword: (_) => t.error_wrong_password,
            resetEmailSent: (_) => t.please_check_your_mail,
          );
          if (errorMessage != null) {
            debugPrint('errorMessage: $errorMessage');
            showAlertDialog(
              context: context,
              message: errorMessage,
              okButtonText: t.dialog.button_ok,
            );
          }
        },
        (_) async {
          BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signedIn());
        },
      ),
    );
  }

  Widget _buildBody(SignInState state) {
    ScreenSize.init(context);

    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<SignInBloc>(context)
            .add(const SignInEvent.backButtonPressed());
        return false;
      },
      child: Scaffold(
        key: scaffoldKey,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SafeArea(
            top: false,
            // bottom: false,
            child: Container(
              constraints: const BoxConstraints.expand(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SvgPicture.asset(
                        AppIcons.login_logo,
                        height: ScreenSize.width * 0.535, //1500x802
                        fit: BoxFit.fitWidth,
                        excludeFromSemantics: true,
                      ),
                      if (state.screen != SignInScreen.main)
                        SafeArea(
                          child: IconButton(
                            color: Palette.primary,
                            icon: HighlightedIcon(
                                icon: Platform.isAndroid
                                    ? const Icon(Icons.arrow_back_rounded)
                                    : const Icon(Icons.arrow_back_ios_rounded)),
                            onPressed: () async {
                              BlocProvider.of<SignInBloc>(context)
                                  .add(const SignInEvent.backButtonPressed());
                            },
                          ),
                        ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                          padding: const EdgeInsets.only(
                            left: Constants.base2,
                            right: Constants.base2,
                          ),
                          child: _buildForm(state)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // bottomSheet: (state.isSubmitting)
        //     ? Container(
        //         child: const LinearProgressIndicator(
        //           valueColor: AlwaysStoppedAnimation(AppColors.primary),
        //           backgroundColor: AppColors.scaffold,
        //         ),
        //       )
        //     : null,
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Palette.scaffold,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildPrivacyPolicyNotification(),
              LinearProgressIndicator(
                value: state.isSubmitting ? null : 0,
                valueColor: const AlwaysStoppedAnimation(Palette.primary),
                backgroundColor: Palette.scaffold,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm(SignInState state) {
    switch (state.screen) {
      case SignInScreen.main:
        return _buildMain(state);
      case SignInScreen.sign_in:
        return _buildSignIn(state);
      case SignInScreen.sign_up:
        return _buildSignUp(state);
      case SignInScreen.reset_password:
        return _buildResetPassword(state);
    }
  }

  Widget _buildHeader(SignInState state, {required String text}) {
    return Column(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }

  Widget _buildMain(SignInState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const BoxDivider(base: Constants.base2),
        _buildHeader(state, text: t.sign_up.heading),
        const BoxDivider(base: Constants.base),
        InkWell(
          onTap: () async {
            BlocProvider.of<SignInBloc>(context)
                .add(const SignInEvent.navigate(SignInScreen.sign_in));
          },
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Constants.base),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: t.existing_user + '  ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextSpan(
                    text: t.log_in,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Palette.primary,
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
        const BoxDivider(base: Constants.base2),
        _buildSignUpAnonymousButton(),
        _buildSignUpWithEmailButton(),
        const BoxDivider(base: Constants.base2),
        if (SIGN_IN_WITH_APPLE_AVAILABLE) _buildSignUpWithAppleButton(),
        _buildSignUpWithGoogleButton(),
      ],
    );
  }

  Widget _buildSignIn(SignInState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const BoxDivider(base: Constants.base2),
        _buildHeader(state, text: t.login),
        const BoxDivider(base: Constants.base2),
        Container(
          margin: const EdgeInsets.fromLTRB(
              Constants.base, Constants.baseH, Constants.base, Constants.baseH),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(passwordFocusNode);
              },
              textInputAction: TextInputAction.next,
              onChanged: (String text) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.emailChanged(text)),
              decoration: TextFieldDecoration(label: t.sign_in.email),
              validator: (_) => state.emailAddress.value.fold(
                (l) => l.maybeMap(
                  invalidEmail: (_) => t.error_invalid_email,
                  orElse: () => null,
                ),
                (r) => null,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(
              Constants.base, Constants.baseH, Constants.base, Constants.baseH),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: TextFormField(
              focusNode: passwordFocusNode,
              obscureText: !state.showPassword,
              onChanged: (String text) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.passwordChanged(text)),
              decoration: PasswordFieldDecoration(
                label: t.sign_in.password,
                onShowPasswordPressed: () =>
                    BlocProvider.of<SignInBloc>(context).add(
                  const SignInEvent.showPasswordPressed(),
                ),
                showPassword: state.showPassword,
              ),
              validator: (_) => state.password.value.fold(
                (l) => l.maybeMap(
                  shortPassword: (_) => t.password_is_incorrect,
                  orElse: () => null,
                ),
                (r) => null,
              ),
            ),
          ),
        ),
        const BoxDivider(base: Constants.base),
        _buildPrimaryButton(
            text: t.login,
            onPressed: () async {
              FocusScope.of(context).requestFocus(FocusNode());
              BlocProvider.of<SignInBloc>(context)
                  .add(const SignInEvent.signInWithEmailAndPasswordPressed());
            }),
        const BoxDivider(base: Constants.base),
        InkWell(
          onTap: () async {
            BlocProvider.of<SignInBloc>(context)
                .add(const SignInEvent.navigate(SignInScreen.reset_password));
          },
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Constants.base),
            child: Text(
              t.sign_in.forgot_password,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Palette.primary,
                  ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUp(SignInState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const BoxDivider(base: Constants.base2),
        _buildHeader(state, text: t.sign_up.heading),
        const BoxDivider(base: Constants.base2),
        Container(
          margin: const EdgeInsets.fromLTRB(
              Constants.base, Constants.baseH, Constants.base, Constants.baseH),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: TextFormField(
              textCapitalization: TextCapitalization.sentences,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(emailFocusNode);
              },
              onChanged: (String text) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.userNameChanged(text)),
              decoration: TextFieldDecoration(label: t.sign_in.name),
              validator: (_) => state.userName.value.fold(
                (l) => l.maybeMap(
                  shortUserName: (_) => t.name_is_empty,
                  orElse: () => null,
                ),
                (r) => null,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(
              Constants.base, Constants.baseH, Constants.base, Constants.baseH),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(passwordFocusNode);
              },
              focusNode: emailFocusNode,
              textInputAction: TextInputAction.next,
              onChanged: (String text) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.emailChanged(text)),
              decoration: TextFieldDecoration(label: t.sign_in.email),
              validator: (_) => state.emailAddress.value.fold(
                (l) => l.maybeMap(
                  invalidEmail: (_) => t.error_invalid_email,
                  orElse: () => null,
                ),
                (r) => null,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(
              Constants.base, Constants.baseH, Constants.base, Constants.baseH),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: TextFormField(
              focusNode: passwordFocusNode,
              obscureText: !state.showPassword,
              onChanged: (String text) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.passwordChanged(text)),
              decoration: PasswordFieldDecoration(
                label: t.sign_in.password,
                onShowPasswordPressed: () =>
                    BlocProvider.of<SignInBloc>(context)
                        .add(const SignInEvent.showPasswordPressed()),
                showPassword: state.showPassword,
              ),
              validator: (_) => state.password.value.fold(
                (l) => l.maybeMap(
                  shortPassword: (_) => t.password_is_incorrect,
                  orElse: () => null,
                ),
                (r) => null,
              ),
            ),
          ),
        ),
        const BoxDivider(base: Constants.base),
        _buildPrimaryButton(
            text: t.sign_in.button_sign_up,
            onPressed: () async {
              FocusScope.of(context).requestFocus(FocusNode());
              BlocProvider.of<SignInBloc>(context)
                  .add(const SignInEvent.registerWithEmailAndPasswordPressed());
            }),
      ],
    );
  }

  Widget _buildResetPassword(SignInState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const BoxDivider(base: Constants.base2),
        _buildHeader(state, text: t.reset_password),
        const BoxDivider(base: Constants.base2),
        Text(
          t.reset_password_hint,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const BoxDivider(base: Constants.base2),
        Container(
          margin: const EdgeInsets.fromLTRB(
              Constants.base, Constants.baseH, Constants.base, Constants.baseH),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (String text) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.emailChanged(text)),
              decoration: TextFieldDecoration(label: t.sign_in.email),
              validator: (_) => state.emailAddress.value.fold(
                (l) => l.maybeMap(
                  invalidEmail: (_) => t.error_invalid_email,
                  orElse: () => null,
                ),
                (r) => null,
              ),
            ),
          ),
        ),
        const BoxDivider(base: Constants.base),
        _buildPrimaryButton(
          text: t.send_reset_link,
          onPressed: () async {
            FocusScope.of(context).requestFocus(FocusNode());
            BlocProvider.of<SignInBloc>(context)
                .add(const SignInEvent.resetPasswordPressed());
          },
        ),
      ],
    );
  }

  Widget _buildPrimaryButton({
    required String text,
    required VoidCallback onPressed,
    IconData? icon,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          Constants.base, Constants.baseH, Constants.base, Constants.baseH),
      child: SizedBox(
        width: double.infinity,
        child: PrimaryButton(
          text: text,
          icon: icon,
          onPressed: () async => onPressed(),
          block: true,
        ),
      ),
    );
  }

  Widget _buildSecondaryButton({
    required String text,
    required VoidCallback onPressed,
    IconData? icon,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          Constants.base, Constants.baseH, Constants.base, Constants.baseH),
      child: SizedBox(
        width: double.infinity,
        child: SecondaryButton(
          text: text,
          icon: icon,
          onPressed: () async => onPressed(),
        ),
      ),
    );
  }

  Widget _buildSignUpAnonymousButton() {
    return _buildPrimaryButton(
      text: t.sign_up.anonymously,
      onPressed: () async {
        BlocProvider.of<SignInBloc>(context)
            .add(const SignInEvent.signInAnonymouslyPressed());
      },
    );
  }

  Widget _buildSignUpWithEmailButton() {
    return _buildPrimaryButton(
      text: t.sign_up.with_email,
      // icon: MdiIcons.emailOutline,
      onPressed: () async {
        BlocProvider.of<SignInBloc>(context)
            .add(const SignInEvent.navigate(SignInScreen.sign_up));
      },
    );
  }

  Widget _buildSignUpWithGoogleButton() {
    return _buildSecondaryButton(
        text: t.sign_up.with_google,
        icon: MdiIcons.google,
        onPressed: () async {
          BlocProvider.of<SignInBloc>(context)
              .add(const SignInEvent.signInWithGooglePressed());
        });
  }

  Widget _buildSignUpWithAppleButton() {
    return _buildSecondaryButton(
        text: t.sign_up.with_apple,
        icon: MdiIcons.apple,
        onPressed: () async {
          BlocProvider.of<SignInBloc>(context)
              .add(const SignInEvent.signInWithApplePressed());
        });
  }

  Widget _buildPrivacyPolicyNotification() {
    return Padding(
      padding: const EdgeInsets.all(Constants.base),
      child: InkWell(
        onTap: () async {
          BlocProvider.of<SignInBloc>(context)
              .add(const SignInEvent.showPrivacyPolicy());
        },
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Constants.base),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: t.sign_in.privacy_policy_notification,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Palette.textMuted,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
