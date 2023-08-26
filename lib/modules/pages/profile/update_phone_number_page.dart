import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/update_profile_bloc/update_profile_bloc.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/custom_text_form_field.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/size_helper.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/models/update_profile/update_profile_payload_model.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/dynamic_toast_messages.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/utils.dart';

class UpdatePhoneNumberPage extends StatefulWidget {
  static const name = '/UpdatePhoneNumberPage';

  const UpdatePhoneNumberPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const UpdatePhoneNumberPage(),
      );

  @override
  State<UpdatePhoneNumberPage> createState() => _UpdatePhoneNumberPage();
}

class _UpdatePhoneNumberPage extends State<UpdatePhoneNumberPage> {
  late ResponsiveDesign _responsiveDesign;
  final FocusNode _firstNameNode = FocusNode();
  final _firstNameController = TextEditingController();
  String? errorFirstText;
  bool readOnly = false;

  final FocusNode _lastNameNode = FocusNode();
  final _lastNameController = TextEditingController();
  String? errorSecondText;

  Color _firstNameBorder = Palette.current.primaryWhiteSmoke;
  Color _lastNameBorder = Palette.current.primaryWhiteSmoke;
  late ProfileModel profileData;
  bool enableSaveButton = false;
  @override
  void initState() {
    super.initState();
    profileData = getIt<PreferenceRepositoryService>().profileData();
    _firstNameController.text = profileData.firstName ?? '';
    _lastNameController.text = profileData.lastName ?? '';

    _firstNameNode.addListener(() {
      if (_firstNameNode.hasFocus) {
        setState(() {
          errorFirstText = null;
          errorSecondText = null;
        });
      }
      setState(() {
        _firstNameBorder = _firstNameNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
    _lastNameNode.addListener(() {
      if (_lastNameNode.hasFocus) {
        setState(() {
          errorFirstText = null;
          errorSecondText = null;
        });
      }
      setState(() {
        _lastNameBorder = _lastNameNode.hasFocus
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
            child: Text(S.of(context).mobile.toUpperCase(),
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
                    Navigator.of(context).pop(true);
                    return null;
                  },
                  initial: () {
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
          _firstNameNode.unfocus();
          _lastNameNode.unfocus();
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
                            textCapitalization: TextCapitalization.sentences,
                            onChanged: (text) {
                              setState(() {
                                errorFirstText = null;
                              });
                            },
                            errorText: errorFirstText,
                            borderColor: _firstNameBorder,
                            autofocus: false,
                            labelText: S.of(context).profile_first_name,
                            focusNode: _firstNameNode,
                            controller: _firstNameController,
                            secure: false,
                            inputType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                            textCapitalization: TextCapitalization.sentences,
                            onChanged: (text) {
                              setState(() {
                                errorSecondText = null;
                              });
                            },
                            errorText: errorSecondText,
                            borderColor: _lastNameBorder,
                            autofocus: false,
                            labelText: S.of(context).last_name,
                            focusNode: _lastNameNode,
                            controller: _lastNameController,
                            secure: false,
                            inputType: TextInputType.text),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.49,
                        ),
                        PrimaryButton(
                          title: 'SAVE',
                          onPressed: () {
                            showErrors();
                            if (enableSaveButton) {
                              context.read<UpdateProfileBloc>().add(
                                  UpdateProfileEvent.updateName(
                                      UpdateProfilePayloadModel(
                                          firstName: _firstNameController.text,
                                          lastName: _lastNameController.text)));
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
      errorFirstText = _firstNameController.text.isEmpty
          ? S.of(context).required_field
          : isValidName(_firstNameController.text)
              ? null
              : "Only allow letters";

      errorSecondText = _lastNameController.text.isEmpty
          ? S.of(context).required_field
          : isValidName(_lastNameController.text)
              ? null
              : "Only allow letters";

      enableSaveButton = (_firstNameController.text.isNotEmpty &&
              _lastNameController.text.isNotEmpty &&
              isValidName(_firstNameController.text) &&
              isValidName(_lastNameController.text))
          ? true
          : false;
    });
  }
}
