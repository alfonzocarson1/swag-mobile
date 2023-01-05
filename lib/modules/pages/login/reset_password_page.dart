import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../common/ui/custom_text_form_field.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/size_helper.dart';
import '../../common/utils/utils.dart';

class ResetPasswordPage extends StatefulWidget {
  static const name = '/ResetPassword';
  const ResetPasswordPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ResetPasswordPage(),
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
        body: GestureDetector(
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomTextFormField(
                                errorText: errorFirstText,
                                borderColor: _passwordBorder,
                                autofocus: false,
                                labelText: S.of(context).new_password,
                                focusNode: _passwordNode,
                                accountController: _passwordController,
                                secure: true,
                                inputType: TextInputType.text),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                                errorText: errorSecondText,
                                isEnabled: errorFirstText == null &&
                                    _passwordController.text.isNotEmpty,
                                borderColor: _confirmPasswordBorder,
                                autofocus: false,
                                labelText: S.of(context).confirm_password,
                                focusNode: _confirmPasswordNode,
                                accountController: _confirmPasswordController,
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
                                    enableButtonFirstPassword) {}
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
            ])));
  }

  void showErrors() {
    setState(() {
      matchPassword = _passwordController.text;
      errorFirstText = isValidPassword(_passwordController.text)
          ? null
          : S.of(context).invalid_password;

      if (_passwordController.text != _confirmPasswordController.text &&
          _confirmPasswordController.text.isNotEmpty) {
        errorSecondText = S.of(context).no_match_password;
        enableButtonSecondPassword = false;
      } else if (_passwordController.text == _confirmPasswordController.text &&
          _confirmPasswordController.text.isNotEmpty) {
        enableButtonSecondPassword = true;
        errorSecondText = null;
      } else {
        errorSecondText = null;
      }

      enableButtonFirstPassword =
          isValidPassword(_passwordController.text) ? true : false;

      errorSecondText = matchPassword == _confirmPasswordController.text
          ? null
          : S.of(context).no_match_password;

      enableButtonSecondPassword = (errorFirstText == null &&
              matchPassword == _confirmPasswordController.text &&
              _confirmPasswordController.text.isNotEmpty)
          ? true
          : false;
    });
  }
}
