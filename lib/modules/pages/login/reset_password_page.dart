import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../common/ui/custom_text_form_field.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/size_helper.dart';
import '../../common/utils/utils.dart';
import '../../data/secure_storage/storage_repository_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class ResetPasswordPage extends StatefulWidget {
  static const name = '/ResetPassword';
  ResetPasswordPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  String email;

  static Route route(email) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ResetPasswordPage(
          email: email,
        ),
      );

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final FocusNode _passwordNode = FocusNode();
  final _passwordController = TextEditingController();
  String? errorFirstText;

  final FocusNode _confirmPasswordNode = FocusNode();
  final _confirmPasswordController = TextEditingController();
  String? errorSecondText;

  Color _passwordBorder = Palette.current.primaryWhiteSmoke;
  Color _confirmPasswordBorder = Palette.current.primaryWhiteSmoke;

  late ResponsiveDesign _responsiveDesign;
  String? matchPassword;
  bool enableButtonFirstPassword = false;
  bool enableButtonSecondPassword = false;

  @override
  void dispose() {
    _confirmPasswordNode.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _passwordNode.addListener(() {
      setState(() {
        //If the password field was focused and now its not we will show the error it has to
        if (_passwordBorder == Palette.current.primaryNeonGreen) {
          errorFirstText = isValidPassword(_passwordController.text)
              ? null
              : S.of(context).invalid_password;
        }
        _passwordBorder = _passwordNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
    _confirmPasswordNode.addListener(() {
      setState(() {
        _confirmPasswordBorder = _confirmPasswordNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          onRoute: () {
            Navigator.of(context, rootNavigator: true)
                .popUntil(ModalRoute.withName('/SignIn'));
          },
        ),
        body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  authenticated: () {
                    getIt<PreferenceRepositoryService>().saveIsLogged(true);
                    getIt<StorageRepositoryService>().saveEmail(widget.email);
                    getIt<StorageRepositoryService>()
                        .savePassword(_confirmPasswordController.text);
                    Loading.hide(context);
                    Navigator.popUntil(context, ModalRoute.withName('/'));
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
            child: _getBody()));
  }

  GestureDetector _getBody() {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          _passwordNode.unfocus();
          _confirmPasswordNode.unfocus();
        },
        child: Stack(children: [
          ColorFiltered(
            colorFilter:
                const ColorFilter.mode(Colors.black38, BlendMode.darken),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: _responsiveDesign.heightMultiplier(80),
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 125,
                          height: 51,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(S.of(context).reset_password_description,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextFormField(
                            errorText: errorFirstText,
                            helperText: S.of(context).password_helper,
                            borderColor: _passwordBorder,
                            autofocus: false,
                            labelText: S.of(context).new_password,
                            focusNode: _passwordNode,
                            controller: _passwordController,
                            secure: true,
                            inputType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                            errorText: errorSecondText,
                            borderColor: _confirmPasswordBorder,
                            autofocus: false,
                            labelText: S.of(context).confirm_password,
                            focusNode: _confirmPasswordNode,
                            controller: _confirmPasswordController,
                            secure: true,
                            inputType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          title: S.of(context).finish_btn,
                          onPressed: () {
                            showErrors();
                            if (enableButtonSecondPassword &&
                                enableButtonFirstPassword) {
                              context.read<AuthBloc>().add(
                                  AuthEvent.changePassword(
                                      '', _confirmPasswordController.text, ''));
                            }
                          },
                          type: PrimaryButtonType.green,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ]));
  }

  void showErrors() {
    setState(() {
      matchPassword = _passwordController.text;
      errorFirstText = _passwordController.text.isEmpty
          ? S.of(context).required_field
          : isValidPassword(_passwordController.text)
              ? null
              : S.of(context).invalid_password;

      errorSecondText = _confirmPasswordController.text.isEmpty
          ? S.of(context).required_field
          : errorFirstText == null && _passwordController.text.isNotEmpty
              ? _passwordController.text == _confirmPasswordController.text &&
                      _confirmPasswordController.text.isNotEmpty
                  ? null
                  : S.of(context).no_match_password
              : null;

      enableButtonFirstPassword =
          isValidPassword(_passwordController.text) ? true : false;

      enableButtonSecondPassword = (errorFirstText == null &&
              matchPassword == _confirmPasswordController.text &&
              _confirmPasswordController.text.isNotEmpty)
          ? true
          : false;
    });
  }
}
