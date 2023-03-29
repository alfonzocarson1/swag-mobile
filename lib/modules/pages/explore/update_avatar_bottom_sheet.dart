import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import '../../../generated/l10n.dart';
import '../../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../../common/ui/handler.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

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
  List<String> imagesList = [
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Lincoln.png?alt=media&token=8cc89dc2-6910-451c-bf2e-32578215d5ca",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Hamilton.png?alt=media&token=2cc6fe55-598d-4e6c-b260-cd837d1a5424",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/queen.png?alt=media&token=fd838f3d-8b30-4785-974c-a5bbfaff113b",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/King.png?alt=media&token=2ff68eab-1ad6-4eb2-8c6f-78bf731d3248",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Flipper.png?alt=media&token=fa4b02fb-992e-4bc2-8532-80fdfd7071de",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Dripskull.png?alt=media&token=3e50bd26-fe59-4008-ae3d-049d8a35ff17",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Skull1.png?alt=media&token=a5efe842-e17b-409a-985a-b7f4a7967a7f",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/HotDog.png?alt=media&token=ca2732fc-e230-4e85-b892-1bcc018ccc6d",
  ];

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
              getAvatarWidgetList(),
              const Spacer(),
              _actionButtonSection(context),
            ],
          ),
        ));
  }

  Widget getAvatarWidgetList() {
    var chunks = [];
    int chunkSize = 3;
    for (var i = 0; i < imagesList.length; i += chunkSize) {
      chunks.add(imagesList.sublist(
          i,
          i + chunkSize > imagesList.length
              ? imagesList.length
              : i + chunkSize));
    }
    return Column(
      children: [
        _rowList(chunks[0]),
        const SizedBox(
          height: 20,
        ),
        _rowList(chunks[1]),
        const SizedBox(
          height: 20,
        ),
        _rowList(chunks[2]),
      ],
    );
  }

  Padding _rowList(List<String> imagesSubList) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _imageItem(imagesSubList[0]),
          const SizedBox(
            width: 20,
          ),
          _imageItem(imagesSubList[1]),
          const SizedBox(
            width: 20,
          ),
          _imageItem(imagesSubList[2]),
        ],
      ),
    );
  }

  Widget _imageItem(String url) {
    return Material(
      color: Palette.current.primaryEerieBlack,
      child: InkWell(
          splashColor: Palette.current.darkGray,
          highlightColor: Palette.current.primaryEerieBlack,
          onTap: () {
            Navigator.of(context, rootNavigator: true)
                .pop(CachedNetworkImageProvider(url));
          },
          child: CachedNetworkImage(
            imageUrl: url,
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
    final ImagePicker picker = ImagePicker();
    // Pick an image
    try {
      final XFile? xFileImage =
          await picker.pickImage(source: source, maxHeight: 800, maxWidth: 600);
      //TODO Do some testing about image size with image 800 x 600
      // var bytes = await xFileImage!.length();

      // final bytes =
      //     (await Image.file(File(xFileImage!.path)).r()).lengthInBytes;
      // final kb = bytes / 1024;
      // final mb = kb / 1024;

      Uint8List bytes = await File(xFileImage!.path).readAsBytes();

      context
          .read<UpdateProfileBloc>()
          .add(UpdateProfileEvent.updateAvatar(bytes, 'avatar', _accountId));

      Navigator.of(context, rootNavigator: true)
          .pop(Image.file(File(xFileImage.path)).image);
    } catch (e) {
      log("Image picker: $e");
    }
  }
}
