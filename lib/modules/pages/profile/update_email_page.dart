import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/cubits/profile/get_profile_cubit.dart';
import 'package:swagapp/modules/models/update_profile/update_profile_payload_model.dart';

import '../../../generated/l10n.dart';
import '../../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../../common/ui/custom_text_form_field.dart';
import '../../common/ui/dynamic_toast_messages.dart';
import '../../common/ui/email_verification_popup.dart';
import '../../common/ui/loading.dart';
import '../../common/ui/primary_button.dart';
import '../../common/ui/pushed_header.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/size_helper.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';

class UpdateEmailPage extends StatefulWidget {
  static const name = '/UpdateEmailPage';

  static Route route() => PageRoutes.material(
    settings: RouteSettings(name: name),
    builder: (context) => const UpdateEmailPage(),
  );

  const UpdateEmailPage({super.key});

  @override
  State<UpdateEmailPage> createState() => _UpdateEmailPage();
}

class _UpdateEmailPage extends State<UpdateEmailPage> {
  late ResponsiveDesign _responsiveDesign;
  final FocusNode _emailNode = FocusNode();
  final _emailController = TextEditingController();
  String? errorEmailText;
  bool readOnly = false;

  Color _emailBorder = Palette.current.primaryWhiteSmoke;
  late ProfileModel profileData;
  bool enableSaveButton = false;

  @override
  void initState() {
    super.initState();
    profileData = getIt<PreferenceRepositoryService>().profileData();
    _emailController.text = profileData.email ?? '';

    _emailNode.addListener(() {
      if (_emailNode.hasFocus) {
        setState(() {
          errorEmailText = null;
        });
      }
      setState(() {
        _emailBorder = _emailNode.hasFocus
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
        backgroundColor: Palette.current.primaryNero,
        appBar: PushedHeader(
          showBackButton: true,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text('EMAIL'.toUpperCase(),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "KnockoutCustom",
                    fontSize: 30,
                    color: Palette.current.primaryNeonGreen)),
          ),
          height: 70,
        ),
        body: BlocListener<UpdateProfileBloc, UpdateProfileState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              updated: () {
                Loading.hide(context);
            //    Future.delayed(const Duration(milliseconds: 3000), () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height / 1.3,
                      ),
                      backgroundColor: Colors.transparent,
                      content: const ToastMessage(
                        message: 'A verification email has been sent',
                      ),
                      dismissDirection: DismissDirection.none));
      //          });
                Future.delayed(const Duration(milliseconds: 4000), () async {

                  final result = await showDialog(
                      context: context,
                      barrierDismissible: false,
                      barrierColor: Colors.black,
                      builder: (BuildContext context) {
                        return EmailVerificationPopup();
                      });
                  if(result){
                    print("CALL API");
                    await getIt<ProfileCubit>().loadProfileResults();
                    print("UPDATe");

                    setState(() {

                    });
                    Navigator.of(context).pop(true);
                  }
                });
                return null;
              },
              initial: () {
                return Loading.show(context);
              },
              error: (message)  {
                Loading.hide(context);
                setState(() {
                  errorEmailText = "an account is already associated with this email";
                });

                // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
              },
            ),
            child: _getBody()));
  }

  GestureDetector _getBody() {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          _emailNode.unfocus();
        },
        child: Stack(children: [
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
                          height: 30,
                        ),
                        CustomTextFormField(
                            onChanged: (text) {
                              setState(() {
                                errorEmailText = null;
                              });
                            },
                            errorText: errorEmailText,
                            borderColor: _emailBorder,
                            autofocus: false,
                            labelText: S.of(context).email,
                            focusNode: _emailNode,
                            controller: _emailController,
                            secure: false,
                            inputType: TextInputType.emailAddress),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.52,
                        ),
                        PrimaryButton(
                          title: 'SAVE',
                          onPressed: () {
                            showErrors();
                            if (enableSaveButton) {
                              context.read<UpdateProfileBloc>().add(
                                  UpdateProfileEvent.updateEmail(UpdateProfilePayloadModel(email: _emailController.text, accountId: profileData.accountId)));
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
      errorEmailText = _emailController.text.isEmpty
          ? S.of(context).required_field
          : isValidEmail(_emailController.text)
          ? null
          : "Invalid email address format";

      enableSaveButton = (_emailController.text.isNotEmpty &&
          isValidEmail(_emailController.text))
          ? true
          : false;
    });
  }

}

