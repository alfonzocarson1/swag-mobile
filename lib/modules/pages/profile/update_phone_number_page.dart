import 'package:country_codes/country_codes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:swagapp/modules/blocs/update_profile_bloc/update_profile_bloc.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/custom_text_form_field.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/size_helper.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/cubits/profile/get_profile_cubit.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/models/update_profile/update_profile_payload_model.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/dynamic_toast_messages.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/utils.dart';
import '../../cubits/auth/auth_cubit.dart';

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
  String? errorFirstText;
  bool readOnly = false;

  late ProfileModel profileData;
  bool enableSaveButton = false;
  String initialCountry = 'US';
  late PhoneNumber initialNumber = PhoneNumber(isoCode: 'US');
  PhoneNumber choseNumber = PhoneNumber(isoCode: 'US');
  var phoneController = TextEditingController();
  bool isEmptyPhone = false;

  @override
  void initState() {
    super.initState();
    profileData = getIt<PreferenceRepositoryService>().profileData();
    phoneController.text = profileData.phoneNumber;
    if (profileData.countryCode != null) {
      var code = CountryCodes.countryCodes()
          .firstWhere((element) =>
              element?.dialCode?.replaceAll("+", "")== profileData.countryCode)!
          .alpha2Code;
      initialNumber = PhoneNumber(isoCode: code);
    }
  }

  final Color borderColor = Palette.current.primaryWhiteSmoke;
  String? errorText;

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
                  error: (message) {
                    Loading.hide(context);
                    showSnackBar(context, message);
                    // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
                  },
                ),
            child: _getBody()));
  }

  GestureDetector _getBody() {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {},
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
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: errorText != null
                                  ? Palette.current.primaryNeonPink
                                  : borderColor,
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
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      child: InternationalPhoneNumberInput(
                                        autoFocus: false,
                                        countries: countriesCode,
                                        cursorColor: Palette.current.blackSmoke,
                                        inputDecoration: InputDecoration(
                                            hintText: S.of(context).phone,
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Palette.current
                                                      .primaryWhiteSmoke),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Palette.current
                                                        .primaryWhiteSmoke))),
                                        onInputChanged: (PhoneNumber nbr) {
                                          choseNumber = nbr;
                                          // widget.notifyIsPhoneValid(nbr);
                                        },
                                        onInputValidated: (bool value) {
                                          setState(() {
                                            if (value) {
                                              getIt<AuthCubit>()
                                                  .loadResultsPhoneAvailable(
                                                      choseNumber.phoneNumber ??
                                                          '');
                                              // notifyIsPhoneValid(choseNumber);
                                            } else {
                                              getIt<AuthCubit>()
                                                  .resetPhoneAvailable();
                                            }
                                          });
                                        },
                                        selectorConfig: const SelectorConfig(
                                          selectorType: PhoneInputSelectorType
                                              .BOTTOM_SHEET,
                                          setSelectorButtonAsPrefixIcon: false,
                                          showFlags: true,
                                          trailingSpace: false,
                                        ),
                                        searchBoxDecoration:
                                            const InputDecoration(
                                          hintText: "Search",
                                        ),
                                        ignoreBlank: false,
                                        autoValidateMode:
                                            AutovalidateMode.disabled,
                                        selectorTextStyle: const TextStyle(
                                            color: Colors.black),
                                        initialValue: initialNumber,
                                        textFieldController: phoneController,
                                        formatInput: true,
                                        keyboardType: TextInputType.phone,
                                        onSubmit: () {
                                          // getIt<AuthCubit>().loadResultsPhoneAvailable(
                                          //     choseNumber.phoneNumber ?? '');
                                          // widget.notifyIsPhoneValid(choseNumber);
                                        },
                                        onSaved: (PhoneNumber number) {
                                          // getIt<AuthCubit>().loadResultsPhoneAvailable(
                                          //     choseNumber.phoneNumber ?? '');
                                          // widget.notifyIsPhoneValid(choseNumber);
                                        },
                                      )))),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        errorText != null
                            ? Text(
                          errorText!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Palette.current.primaryNeonPink),
                        )
                            : Container(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.49,
                        ),
                        PrimaryButton(
                          title: 'SAVE',
                          onPressed: () {
                            showErrors();
                            if (areFieldsValid()) {
                              context.read<UpdateProfileBloc>().add(
                                  UpdateProfileEvent.updatePhoneNumber(
                                      UpdateProfilePayloadModel(
                                          phoneNumber:
                                              choseNumber.phoneNumber)));
                            }
                            // }
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
    if (phoneController.text.isEmpty) {
      isEmptyPhone = true;
      errorText = S.of(context).required_field;
    } else {
      errorText = null;
    }
    setState(() {});
  }

  bool areFieldsValid() {
    return errorText == null;
  }
}
