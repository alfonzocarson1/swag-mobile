import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/clickable_text.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/utils.dart';

import '../../common/ui/custom_text_form_field.dart';
import '../../constants/constants.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccountPage> {
  final FocusNode _emailNode = FocusNode();
  final _emailController = TextEditingController();
  Color _emailBorder = Palette.current.primaryWhiteSmoke;
  String? emailErrorText;

  final FocusNode _passwordNode = FocusNode();
  final _passwordController = TextEditingController();
  Color _passwordBorder = Palette.current.primaryWhiteSmoke;
  String? passwordErrorText;

  final FocusNode _confirmPasswordNode = FocusNode();
  final _confirmPasswordController = TextEditingController();
  Color _confirmPasswordBorder = Palette.current.primaryWhiteSmoke;
  String? confirmPasswordErrorText;

  final FocusNode _phoneNode = FocusNode();
  final _phoneController = TextEditingController();
  String? phoneErrorText;
  Color _phoneBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _usernameNode = FocusNode();
  final _usernameController = TextEditingController();
  Color _usernameBorder = Palette.current.primaryWhiteSmoke;
  String? usernameErrorText;

  bool checkBoxValue = false;

  @override
  void dispose() {
    _phoneNode.dispose();
    _emailNode.dispose();
    _passwordNode.dispose();
    _confirmPasswordNode.dispose();
    _usernameNode.dispose();
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

    _confirmPasswordNode.addListener(() {
      setState(() {
        _confirmPasswordBorder = _confirmPasswordNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
    _phoneNode.addListener(() {
      setState(() {
        _phoneBorder = _phoneNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
    _usernameNode.addListener(() {
      setState(() {
        _usernameBorder = _usernameNode.hasFocus
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
              _passwordNode.unfocus();
              _confirmPasswordNode.unfocus();
              _phoneNode.unfocus();
              _usernameNode.unfocus();
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
                              CustomTextFormField(
                                  borderColor: _emailBorder,
                                  errorText: emailErrorText,
                                  autofocus: false,
                                  labelText: S.of(context).email,
                                  focusNode: _emailNode,
                                  accountController: _emailController,
                                  onChanged: (value) {
                                    setState(() {
                                      emailErrorText = isValidEmail(value)
                                          ? null
                                          : S.of(context).invalid_email;
                                    });
                                  },
                                  inputType: TextInputType.emailAddress),
                              const SizedBox(
                                height: 20,
                              ),
                              _LoginWithPhoneSection(_phoneController,
                                  _phoneNode, phoneErrorText, _phoneBorder),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormField(
                                  errorText: passwordErrorText,
                                  borderColor: _passwordBorder,
                                  autofocus: false,
                                  labelText: S.of(context).password,
                                  focusNode: _passwordNode,
                                  accountController: _passwordController,
                                  onChanged: (value) {
                                    setState(() {
                                      passwordErrorText = isValidPassword(value)
                                          ? null
                                          : S.of(context).invalid_password;

                                      confirmPasswordErrorText = value ==
                                                  _confirmPasswordController
                                                      .text &&
                                              _confirmPasswordController
                                                  .text.isNotEmpty
                                          ? null
                                          : S.of(context).no_match_password;
                                    });
                                  },
                                  secure: true,
                                  inputType: TextInputType.text),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormField(
                                  errorText: confirmPasswordErrorText,
                                  borderColor: _confirmPasswordBorder,
                                  autofocus: false,
                                  labelText: S.of(context).confirm_password,
                                  focusNode: _confirmPasswordNode,
                                  accountController: _confirmPasswordController,
                                  onChanged: (value) {
                                    setState(() {
                                      confirmPasswordErrorText =
                                          value == _passwordController.text
                                              ? null
                                              : S.of(context).no_match_password;
                                    });
                                  },
                                  secure: true,
                                  inputType: TextInputType.text),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormField(
                                  borderColor: _usernameBorder,
                                  errorText: usernameErrorText,
                                  autofocus: false,
                                  labelText: S.of(context).username,
                                  focusNode: _usernameNode,
                                  accountController: _usernameController,
                                  onChanged: (value) {
                                    setState(() {
                                      usernameErrorText = isValidUsername(value)
                                          ? null
                                          : S.of(context).invalid_username;
                                    });
                                  },
                                  suffix: usernameErrorText == null
                                      ? Icon(
                                          Icons.check,
                                          color:
                                              _usernameController.text.isEmpty
                                                  ? Colors.grey
                                                  : Colors.green,
                                        )
                                      : Icon(
                                          Icons.close,
                                          color:
                                              Palette.current.primaryNeonPink,
                                        ),
                                  inputType: TextInputType.emailAddress),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 24.0,
                                    width: 24.0,
                                    child: Checkbox(
                                      checkColor: Palette.current.black,
                                      value: checkBoxValue,
                                      onChanged: (value) {
                                        setState(() =>
                                            checkBoxValue = value ?? false);
                                      },
                                      side: BorderSide(
                                          color:
                                              Palette.current.primaryNeonGreen),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: ClickableText(
                                          title: SimpleRichText(
                                            S.of(context).privacy_policy_text,
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    color: Palette.current
                                                        .primaryNeonGreen,
                                                    fontWeight:
                                                        FontWeight.w300),
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              PrimaryButton(
                                title: S.of(context).create_account,
                                onPressed: areFieldsValid() ? () {} : null,
                                type: PrimaryButtonType.green,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ClickableText(
                                  title: SimpleRichText(
                                    S.of(context).already_have_an_account,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Palette
                                                .current.primaryNeonGreen,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ])));
  }

  bool areFieldsValid() {
    return emailErrorText == null &&
        _emailController.text.isNotEmpty &&
        phoneErrorText == null &&
        _phoneController.text.isNotEmpty &&
        passwordErrorText == null &&
        _passwordController.text.isNotEmpty &&
        confirmPasswordErrorText == null &&
        _confirmPasswordController.text.isNotEmpty &&
        usernameErrorText == null &&
        _usernameController.text.isNotEmpty &&
        checkBoxValue;
  }
}

class _LoginWithPhoneSection extends StatefulWidget {
  final TextEditingController phoneController;
  final FocusNode? focusPhone;
  final String? errorText;
  final Color? borderColor;
  const _LoginWithPhoneSection(
      this.phoneController, this.focusPhone, this.errorText, this.borderColor);

  @override
  State<_LoginWithPhoneSection> createState() => __LoginWithPhoneSectionState();
}

class __LoginWithPhoneSectionState extends State<_LoginWithPhoneSection> {
  late TextEditingController _phoneController;
  late FocusNode? _focusPhone;
  late String? _errorText;
  late Color? _borderColor;
  String initialCountry = 'CO';
  PhoneNumber initialNumber = PhoneNumber(isoCode: 'CO');
  PhoneNumber choseNumber = PhoneNumber(isoCode: 'CO');
  bool isLoginEnabled = false;

  @override
  void initState() {
    super.initState();
    _phoneController = widget.phoneController;
    _focusPhone = widget.focusPhone;
    _errorText = widget.errorText;
    _borderColor = widget.borderColor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: _errorText != null
                  ? Palette.current.primaryNeonPink
                  : _borderColor!,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Palette.current.primaryWhiteSmoke,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 16),
                child: InternationalPhoneNumberInput(
                  autoFocus: false,
                  countries: countries,
                  focusNode: _focusPhone,
                  cursorColor: Palette.current.blue,
                  inputDecoration: InputDecoration(
                      hintText: S.of(context).phone,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Palette.current.primaryWhiteSmoke),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Palette.current.primaryWhiteSmoke))),
                  onInputChanged: (PhoneNumber nbr) {
                    choseNumber = nbr;
                  },
                  onInputValidated: (bool value) {
                    setState(() {
                      _errorText = value ? null : S.of(context).phone_taken;
                    });
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.DROPDOWN,
                    setSelectorButtonAsPrefixIcon: true,
                    showFlags: false,
                    trailingSpace: false,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  initialValue: initialNumber,
                  textFieldController: _phoneController,
                  formatInput: true,
                  keyboardType: TextInputType.phone,
                  onSaved: (PhoneNumber number) {
                    print("onSaved");
                  },
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        _errorText != null
            ? Text(
                _errorText!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Palette.current.primaryNeonPink),
              )
            : Container(),
      ],
    );
  }
}
