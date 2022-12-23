import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../common/ui/custom_text_form_field.dart';
import '../../common/utils/size_helper.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final FocusNode _passwordNode = FocusNode();
  final _passwordController = TextEditingController();

  final FocusNode _confirmPasswordNode = FocusNode();
  final _confirmPasswordController = TextEditingController();

  late ResponsiveDesign _responsiveDesign;

  @override
  void dispose() {
    _confirmPasswordNode.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
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
                            Text(
                                "Please enter and confirm your new password below.",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        color:
                                            Palette.current.primaryWhiteSmoke,
                                        fontSize: 16)),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomTextFormField(
                                autofocus: false,
                                labelText: "New Password",
                                focusNode: _passwordNode,
                                accountController: _passwordController,
                                onChanged: (value) {},
                                secure: true,
                                inputType: TextInputType.text),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                                autofocus: false,
                                labelText: "Confirm Password",
                                focusNode: _confirmPasswordNode,
                                accountController: _confirmPasswordController,
                                onChanged: (value) {},
                                inputType: TextInputType.emailAddress),
                            const SizedBox(
                              height: 20,
                            ),
                            PrimaryButton(
                              title: "FINISH",
                              onPressed: () {},
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
