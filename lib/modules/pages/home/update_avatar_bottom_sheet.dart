import 'dart:developer';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/handler.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';

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
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/skull.png?alt=media&token=330fc6b3-9839-42f2-bcd4-39ec67967620",
  ];
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
              minHeight: MediaQuery.of(context).size.height * 0.73,
              maxHeight: MediaQuery.of(context).size.height * 0.73),
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
        _rowList(chunks[1]),
        _rowList(chunks[2]),
      ],
    );
  }

  Padding _rowList(List<String> imagesSubList) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          _imageItem(imagesSubList[0]),
          const SizedBox(
            width: 12.5,
          ),
          _imageItem(imagesSubList[1]),
          const SizedBox(
            width: 12.5,
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
      final XFile? xFileImage = await picker.pickImage(source: source);

      Navigator.of(context, rootNavigator: true)
          .pop(Image.file(File(xFileImage!.path)).image);
    } catch (e) {
      log("Image picker: $e");
    }
  }
}
