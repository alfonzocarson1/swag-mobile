import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:async_builder/async_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:http/http.dart' as http;

import '../../../../common/ui/multi_image_slide.dart';
import '../../../../common/ui/popup_image_guidelines.dart';
import '../../../../common/utils/palette.dart';

class SliderCustomWidget extends StatefulWidget {
  const SliderCustomWidget({this.imageUrls, required this.getImageFiles, super.key});
  final List<dynamic>? imageUrls;
  final ValueChanged<List<XFile>> getImageFiles;

  @override
  State<SliderCustomWidget> createState() => _SliderCustomWidgetState();
}

class _SliderCustomWidgetState extends State<SliderCustomWidget> {
  final ImagePicker imagePicker = ImagePicker();
  List<File> tempFiles = [];
  List<XFile> imgList = [];

  @override
  void dispose() {
    super.dispose();
    _cleanupTemporaryFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (widget.imageUrls != null && imgList.isEmpty)
          ? AsyncBuilder(
              future: addUrlImagesToList(widget.imageUrls ?? [], imgList),
              waiting: (context) => Center(
                child: CircularProgressIndicator(
                              color: Palette.current.primaryNeonGreen,
                              backgroundColor: Colors.white,
                            ),
              ),
              builder: (BuildContext context, value) {
                return MultiImageSlide(
                  imgList: imgList,
                  addPhoto: () => selectImages(),
                  onRemove: (index) {
                    setState(() {
                      imgList.removeAt(index);
                    });
                  },
                );
              },
            )
          : MultiImageSlide(
              imgList: imgList,
              addPhoto: () => selectImages(),
              onRemove: (index) {
                setState(() {
                  imgList.removeAt(index);
                });
              },
            ),
    );
  }

  Future<void> selectImages() async {
    // Pick an image
    try {
      final List<XFile> selectedImages = await imagePicker.pickMultiImage();

      if ((selectedImages.length + imgList.length) <= 6) {
        imgList.addAll(selectedImages);
      } else {
        showDialog(
            barrierDismissible: false,
            builder: (BuildContext context) {
              return const PopUpImageGuideline();
            },
            context: context);
      }

      setState(() {});
    } catch (e) {
      log("Image picker: $e");
    }
  }

  Future<XFile> downloadImageAndGetXFile(String imageUrl) async {
    // Download the image
    try {
  final response = await http.get(Uri.parse(imageUrl));
  if (response.statusCode != 200) {
    throw Exception("Failed to download image");
  }
  
  // Save the image to a local file
  final directory = await getTemporaryDirectory();
  final fileName = DateTime.now().millisecondsSinceEpoch.toString() + '.jpg';
  final localFilePath = '${directory.path}/$fileName';
  final localFile = File(localFilePath);
  await localFile.writeAsBytes(response.bodyBytes);
  
  tempFiles.add(localFile);
  // Create an XFile object and return it
  return XFile(localFilePath);
} on Exception catch (e) {
  
  throw Exception("$e: Failed to download image");
}
  }

  Future<void> addUrlImagesToList(
      List<dynamic> imageUrls, List<XFile> imgList) async {
    for (String imageUrl in imageUrls) {
      try {
        final xFile = await downloadImageAndGetXFile(imageUrl);
        imgList.add(xFile);
        print('Image added to the list: $imageUrl');
      } catch (e) {
        print('Error downloading image: $e');
      }
    }
    widget.getImageFiles(imgList);
  }

  Future<void> _cleanupTemporaryFiles() async {
    // If you have stored the temporary files in a list, iterate through the list and delete each file.
    for (File file in tempFiles) {
      try {
        await file.delete();
        debugPrint("temporary fiile deleted");
      } catch (e) {
        print("Error deleting file: $e");
      }
    }
  }
}
