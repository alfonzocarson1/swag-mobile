import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/clickable_text.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/utils.dart';

import 'package:swagapp/modules/pages/login/create_account_page.dart';
import 'package:swagapp/modules/pages/login/forgot_password_page.dart';

import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../common/ui/custom_text_form_field.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../data/secure_storage/storage_repository_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../home/home_page.dart';

class SignInPage extends StatefulWidget {
  static const name = '/SignIn';
  const SignInPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const SignInPage(),
      );

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FocusNode _emailNode = FocusNode();
  final _emailController = TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  final _passwordController = TextEditingController();
  Color _emailBorder = Palette.current.primaryWhiteSmoke;
  Color _passwordBorder = Palette.current.primaryWhiteSmoke;
  String? emailErrorText;
  String? passwordlErrorText;

  final _subjectController =
      TextEditingController(text: 'User problem signing into the Swag App');
  final _bodyController = TextEditingController(
      text: '''  <em>the body has <code>HTML</code></em> <br><br><br>
  <strong>Some Apps like Gmail might ignore it</strong>
  ''');

  Future<void> send(BuildContext context) async {
    if (Platform.isIOS) {
      final bool canSend = await FlutterMailer.canSendMail();
      if (!canSend) {
        const SnackBar snackbar =
            SnackBar(content: Text('no Email App Available'));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        return;
      }
    }

    final MailOptions mailOptions = MailOptions(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: <String>['app@swag.golf'],
      isHTML: true,
    );

    String platformResponse;

    try {
      final MailerResponse response = await FlutterMailer.send(mailOptions);
      switch (response) {
        case MailerResponse.saved:
          platformResponse = 'mail was saved to draft';
          break;
        case MailerResponse.sent:
          platformResponse = 'mail was sent';
          break;
        case MailerResponse.cancelled:
          platformResponse = 'mail was cancelled';
          break;
        case MailerResponse.android:
          platformResponse = 'intent was success';
          break;
        default:
          platformResponse = 'unknown';
          break;
      }
    } on PlatformException catch (error) {
      platformResponse = error.toString();
      print(error);

      await showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Message',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(error.message ?? 'unknown error'),
            ],
          ),
          contentPadding: const EdgeInsets.all(26),
          title: Text(error.code),
        ),
      );
    } catch (error) {
      platformResponse = error.toString();
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }

  @override
  void dispose() {
    _emailNode.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _emailNode.addListener(() {
      setState(() {
        _emailBorder = _emailNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
    _passwordNode.addListener(() {
      setState(() {
        _passwordBorder = _passwordNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  authenticated: () {
                    getIt<PreferenceRepositoryService>().saveIsLogged(true);
                    getIt<StorageRepositoryService>()
                        .saveEmail(_emailController.text);
                    getIt<StorageRepositoryService>()
                        .savePassword(_passwordController.text);
                    Loading.hide(context);

                    if (getIt<PreferenceRepositoryService>()
                        .forgotPasswordFlow()) {
                      getIt<PreferenceRepositoryService>()
                          .saveForgotPasswordFlow(false);
                      Future.delayed(const Duration(milliseconds: 5000), () {
                        Navigator.of(context, rootNavigator: true).pop();
                      });
                    } else {
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    }

                    return null;
                  },
                  logging: () {
                    return Loading.show(context);
                  },
                  error: (message) => {
                    Loading.hide(context),
                    // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
                  },
                ),
            child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _emailNode.unfocus();
                  _passwordNode.unfocus();
                },
                child: Stack(children: [
                  ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                        Colors.black38, BlendMode.darken),
                    child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/background.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: null),
                  ),
                  LayoutBuilder(builder: (context, viewportConstraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: IntrinsicHeight(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: SafeArea(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset(
                                    'assets/images/logo.png',
                                    width: 125,
                                    height: 51,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  BlocBuilder<AuthBloc, AuthState>(
                                      builder: (context, usernameState) {
                                    return usernameState.maybeMap(
                                      orElse: () => Container(),
                                      error: (error) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            S
                                                .of(context)
                                                .incorrect_email_or_password,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    color: Palette.current
                                                        .primaryNeonPink),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                                  CustomTextFormField(
                                      borderColor: _emailBorder,
                                      errorText: emailErrorText,
                                      autofocus: false,
                                      labelText: S.of(context).email,
                                      focusNode: _emailNode,
                                      controller: _emailController,
                                      inputType: TextInputType.emailAddress),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  CustomTextFormField(
                                      borderColor: _passwordBorder,
                                      errorText: passwordlErrorText,
                                      autofocus: false,
                                      labelText: S.of(context).password,
                                      focusNode: _passwordNode,
                                      controller: _passwordController,
                                      secure: true,
                                      inputType: TextInputType.text),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ClickableText(
                                      title: Text(
                                        S.of(context).forgot_password,
                                        textAlign: TextAlign.right,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color: Palette
                                                    .current.primaryNeonGreen,
                                                fontWeight: FontWeight.w300),
                                      ),
                                      onPressed: () {
                                        getIt<PreferenceRepositoryService>()
                                            .saveForgotPasswordFlow(true);
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(ForgotPasswordPage.route());
                                      }),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  PrimaryButton(
                                    title: S.of(context).sign_in.toUpperCase(),
                                    onPressed: () {
                                      showErrors();
                                      if (areFieldsValid()) {
                                        getIt<AuthBloc>().add(
                                            AuthEvent.authenticate(
                                                _emailController.text,
                                                _passwordController.text));
                                      }
                                    },
                                    type: PrimaryButtonType.green,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ClickableText(
                                      title: RichText(
                                        maxLines: 1,
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text:
                                                S.of(context).dont_have_account,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  color: Palette
                                                      .current.primaryNeonGreen,
                                                ),
                                          ),
                                          TextSpan(
                                            text: S.of(context).create_account,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: Palette
                                                      .current.primaryNeonGreen,
                                                ),
                                          ),
                                        ]),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(CreateAccountPage.route());
                                      }),
                                  const Spacer(),
                                  ClickableText(
                                      title: RichText(
                                        maxLines: 1,
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: S
                                                .of(context)
                                                .problems_signing_in,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  color: Palette.current
                                                      .primaryWhiteSmoke,
                                                ),
                                          ),
                                          TextSpan(
                                            text: S.of(context).contact_us,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: Palette.current
                                                      .primaryWhiteSmoke,
                                                ),
                                          ),
                                        ]),
                                      ),
                                      onPressed: () {
                                        send(context);
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ]))));
  }

  void showErrors() {
    setState(() {
      emailErrorText = _emailController.text.isEmpty
          ? S.of(context).required_field
          : isValidEmail(_emailController.text)
              ? null
              : S.of(context).invalid_email;

      passwordlErrorText = _passwordController.text.isEmpty
          ? S.of(context).required_field
          : _passwordController.text.isNotEmpty
              ? null
              : S.of(context).empty_password;
    });
  }

  bool areFieldsValid() {
    return emailErrorText == null &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty;
  }
}
