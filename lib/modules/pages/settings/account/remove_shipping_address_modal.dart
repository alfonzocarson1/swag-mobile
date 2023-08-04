import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../../../common/ui/loading.dart';
import '../../../cubits/profile/get_profile_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';

class RemoveAddressPopUp extends StatefulWidget {
  RemoveAddressPopUp({super.key, required this.addressIndex});

  int addressIndex;

  @override
  State<RemoveAddressPopUp> createState() => _RemoveAddressPopUpState();
}

class _RemoveAddressPopUpState extends State<RemoveAddressPopUp> {
  String? addressId;
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

  @override
  void initState() {
    super.initState();
    setState(() {
      addressId = '${profileData.addresses![widget.addressIndex].addressId}';
    });
  }

  Dialog _getBody() {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Stack(
        children: [
          Container(
            color: Palette.current.blackSmoke,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            S
                                .of(context)
                                .existing_item_to_collection_error_title
                                .toUpperCase(),
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  fontFamily: "KnockoutCustom",
                                  fontSize: 44,
                                  fontWeight: FontWeight.w300,
                                  color: Palette.current.primaryNeonGreen,
                                )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(S.of(context).remove_address_pop_up,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 15,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    title: S.of(context).delete,
                    onPressed: () async {
                      context.read<UpdateProfileBloc>().add(
                          UpdateProfileEvent.removeAddress(addressId ?? ''));
                    },
                    type: PrimaryButtonType.green,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 3,
            child: IconButton(
              iconSize: 30,
              color: Palette.current.primaryNeonGreen,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.clear_outlined,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateProfileBloc, UpdateProfileState>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              updated: () {
                getIt<ProfileCubit>().loadProfileResults();
                Loading.hide(context);
                Navigator.of(context).pop();
                Navigator.of(context).pop();
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
        child: _getBody());
  }
}
