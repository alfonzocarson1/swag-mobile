import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

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
  Color _emailBorder = Palette.current.primaryWhiteSmoke;
  Color _codeBorder = Palette.current.primaryWhiteSmoke;
  late bool _codeView = false;

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
                                ? "Please check your email and enter your six digit code below."
                                : "Enter your email to reset your password.",
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                            autofocus: false,
                            borderColor: _codeView ? _codeBorder : _emailBorder,
                            labelText: _codeView ? "Code" : "Email",
                            focusNode: _codeView ? _codeNode : _emailNode,
                            accountController:
                                _codeView ? _codeController : _emailController,
                            onChanged: (value) {},
                            inputType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          title: "RESET PASSWORD",
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //Test variable to see dynamic behavior
                                  setState(() {
                                    _codeView = false;
                                  });
                                },
                                child: Text("Didn’t get an email?",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color:
                                              Palette.current.primaryNeonGreen,
                                        )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  //Test variable to see dynamic behavior
                                  setState(() {
                                    _codeView = false;
                                  });
                                },
                                child: Text("Resend Email.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Palette.current.primaryNeonGreen,
                                        )),
                              ),
                            ],
                          ),
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
