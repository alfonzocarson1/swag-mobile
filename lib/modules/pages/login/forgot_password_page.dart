import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../common/ui/clickable_text.dart';
import '../../common/ui/custom_app_bar.dart';
import '../../common/ui/custom_text_form_field.dart';
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
  late bool _codeView = false;

  @override
  void dispose() {
    _emailNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _codeView = widget.codeView ?? false;
    _emailNode.addListener(() {
      setState(() {
        // _userNameBorder =
        //     _emailNode.hasFocus ? Palette.current.orange : Colors.grey;
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
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: Palette.current.primaryWhiteSmoke,
                                    fontSize: 16)),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextFormField(
                            autofocus: false,
                            labelText: _codeView
                                ? S.of(context).code
                                : S.of(context).email,
                            focusNode: _codeView ? _codeNode : _emailNode,
                            accountController:
                                _codeView ? _codeController : _emailController,
                            onChanged: (value) {},
                            inputType: TextInputType.text),
                        const SizedBox(
                          height: 30,
                        ),
                        PrimaryButton(
                          title: S.of(context).reset_password_btn,
                          onPressed: () {
                            if (!_codeView) {
                              setState(() {
                                _codeView = true;
                              });
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ResetPasswordPage(),
                                ),
                              );
                            }
                          },
                          type: PrimaryButtonType.green,
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
                                    .headlineLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Palette.current.primaryNeonGreen,
                                        fontSize: 16),
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
