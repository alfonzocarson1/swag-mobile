import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../common/ui/custom_text_form_field.dart';
import '../../common/utils/size_helper.dart';
import '../../common/utils/utils.dart';
import 'sign_in_page.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

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
  bool enableBTN = false;

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInPage(),
              ),
            );
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
                                onChanged: (value) {
                                  setState(() {
                                    matchPassword = value;
                                    errorFirstText = isValidPassword(value)
                                        ? null
                                        : S.of(context).invalid_password;
                                    if (isValidPassword(value)) {
                                      enableBTN = true;
                                    } else {
                                      enableBTN = false;
                                    }
                                  });
                                },
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
                                accountController: _confirmPasswordController,
                                onChanged: (value) {
                                  setState(() {
                                    errorSecondText = matchPassword == value
                                        ? null
                                        : S.of(context).no_match_password;
                                    if (errorFirstText == null &&
                                        matchPassword == value &&
                                        _confirmPasswordController
                                            .text.isNotEmpty) {
                                      enableBTN = true;
                                    } else {
                                      enableBTN = false;
                                    }
                                  });
                                },
                                secure: true,
                                inputType: TextInputType.text),
                            const SizedBox(
                              height: 20,
                            ),
                            PrimaryButton(
                              title: S.of(context).finish_btn,
                              onPressed: enableBTN ? () {} : null,
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
}
