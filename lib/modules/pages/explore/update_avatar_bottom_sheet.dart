import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:swagapp/modules/common/ui/grant_permission_popup.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import '../../../generated/l10n.dart';
import '../../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../../common/ui/handler.dart';
import '../../common/ui/image_picker_with_permissions.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/update_profile/update_profile_payload_model.dart';

class UpdateAvatarBottomSheet extends StatefulWidget {
  const UpdateAvatarBottomSheet(this.image, {Key? key}) : super(key: key);

  static Route route(final BuildContext context, Image? image) =>
      PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        settings: const RouteSettings(name: '/update-avatar-bottom-sheet'),
        builder: (context) => UpdateAvatarBottomSheet(image),
        context: context,
      );

  final Image? image;

  @override
  _UpdateAvatarBottomSheetState createState() =>
      _UpdateAvatarBottomSheetState();
}

class _UpdateAvatarBottomSheetState extends State<UpdateAvatarBottomSheet> {
  final FocusNode _focusNode = FocusNode();

  String _accountId = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _accountId = getIt<PreferenceRepositoryService>().accountId();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Container(
          decoration: BoxDecoration(
            color: Palette.current.primaryEerieBlack,
            borderRadius: BorderRadius.circular(15),
          ),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.80,
              maxHeight: MediaQuery.of(context).size.height * 0.80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 15,
              ),
              const HandlerWidget(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, right: 65),
                child: Text(
                  S.of(context).select_avatar_desc,
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Palette.current.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    mainAxisExtent: 100,
                  ),
                  itemCount: imagesList.length,
                  itemBuilder: (_, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [_imageItem(imagesList[index])],
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Spacer(),
              _actionButtonSection(context),
            ],
          ),
        ));
  }

  Widget _imageItem(dynamic avatar) {
    return Material(
      color: Palette.current.primaryEerieBlack,
      child: InkWell(
          onTap: () {
            getIt<UpdateProfileBloc>().add(UpdateProfileEvent.update(
                UpdateProfilePayloadModel(useAvatar: avatar['id'])));
            Navigator.of(context, rootNavigator: true)
                .pop(CachedNetworkImageProvider(avatar['url']));
          },
          child: CachedNetworkImage(
            imageUrl: avatar['url'],
            height: 90,
            width: 90,
            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(
                color: Palette.current.primaryNeonGreen,
                backgroundColor: Colors.white,
              ),
            ),
            errorWidget: (context, url, error) =>
                Image.asset("assets/images/ProfilePhoto.png"),
          )),
    );
  }

  Widget _actionButtonSection(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: PrimaryButton(
              title: S.of(context).access_photos,
              onPressed: () async {
                photoLibraryCall(ImageSource.gallery);
              },
              type: PrimaryButtonType.primaryEerieBlack,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: PrimaryButton(
              title: S.of(context).camera,
              onPressed: () {
                photoLibraryCall(ImageSource.camera);
              },
              type: PrimaryButtonType.primaryEerieBlack,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> photoLibraryCall(ImageSource source) async {
    // Pick an image
    try {
      final file = (await selectImageAndHandlePermissions(context, source))!;

      Uint8List bytes = await file.readAsBytes();

      context
          .read<UpdateProfileBloc>()
          .add(UpdateProfileEvent.updateAvatar(bytes, 'avatar', _accountId));

      Navigator.of(context, rootNavigator: true).pop(Image.file(file).image);
    } catch (e) {
      log("Image picker: $e");
    }
  }
}
