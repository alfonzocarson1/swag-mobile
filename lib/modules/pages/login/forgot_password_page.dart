import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../common/ui/clickable_text.dart';
import '../../common/ui/custom_app_bar.dart';
import '../../common/ui/custom_text_form_field.dart';
import '../../common/utils/utils.dart';
import 'reset_password_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key, this.codeView}) : super(key: key);

  final bool? codeView;

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final FocusNode _emailNode = FocusNode();
  final FocusNode _codeNode = FocusNode();
  final _emailController = TextEditingController();
  final _codeController = TextEditingController();
  Color _emailBorder = Palette.current.primaryWhiteSmoke;
  Color _codeBorder = Palette.current.primaryWhiteSmoke;
  late bool _codeView = false;
  String? errorText;

  @override
  void dispose() {
    _emailNode.dispose();
    _codeNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _codeView = widget.codeView ?? false;
    _emailNode.addListener(() {
      setState(() {
        _emailBorder = _emailNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
    _codeNode.addListener(() {
      setState(() {
        _codeBorder = _codeNode.hasFocus
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
      body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            _emailNode.unfocus();
            _codeNode.unfocus();
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
                        const SizedBox(
                          height: 100,
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 125,
                          height: 51,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                            _codeView
                                ? S.of(context).forgot_password_code_description
                                : S
                                    .of(context)
                                    .forgot_password_email_description,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                            autofocus: false,
                            errorText: errorText,
                            borderColor: _codeView ? _codeBorder : _emailBorder,
                            labelText: _codeView
                                ? S.of(context).code
                                : S.of(context).email,
                            focusNode: _codeView ? _codeNode : _emailNode,
                            accountController:
                                _codeView ? _codeController : _emailController,
                            onChanged: (value) {
                              setState(() {
                                if (!_codeView) {
                                  errorText = isValidEmail(value)
                                      ? null
                                      : S.of(context).invalid_email;
                                }
                              });
                            },
                            inputType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        Visibility(
                          visible: !_codeView,
                          child: PrimaryButton(
                            title: S.of(context).reset_password_btn,
                            onPressed: errorText == null &&
                                    _emailController.text.isNotEmpty
                                ? () {
                                    setState(() {
                                      _codeView = true;
                                    });
                                  }
                                : null,
                            type: PrimaryButtonType.green,
                          ),
                        ),
                        Visibility(
                          visible: _codeView,
                          child: PrimaryButton(
                            title: S.of(context).reset_password_btn,
                            onPressed: _codeController.text.isNotEmpty
                                ? () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ResetPasswordPage(),
                                      ),
                                    );
                                  }
                                : null,
                            type: PrimaryButtonType.green,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Visibility(
                          visible: _codeView,
                          child: ClickableText(
                              title: SimpleRichText(
                                S.of(context).resend_email,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Palette.current.primaryNeonGreen,
                                    ),
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ),
                ),
              ));
            })
          ])),
    );
  }
}
