import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:async_builder/async_builder.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:swagapp/modules/common/ui/add_photo_list_item.dart';

import '../../../../common/ui/multi_image_slide.dart';
import '../../../../common/ui/popup_image_guidelines.dart';
import '../../../../common/utils/palette.dart';

class SliderCustomWidget extends StatefulWidget {
  const SliderCustomWidget(
      {this.imageUrls, required this.getImageFiles, super.key});
  final List<dynamic>? imageUrls;
  final ValueChanged<List<File>> getImageFiles;

  @override
  State<SliderCustomWidget> createState() => _SliderCustomWidgetState();
}

class _SliderCustomWidgetState extends State<SliderCustomWidget> {
  final ImagePicker imagePicker = ImagePicker();
  List<dynamic> urls= [];
  List<File> tempFiles = [];
  List<File> imgList = [];
  bool removedImages = false;
  
  @override
  void initState() {
   urls= widget.imageUrls ?? [];
    super.initState();
  }

  
  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return (removedImages == true) ?  AddPhotoWidget(
                  addPhoto: () => selectImages(),
                ):  Container(
      child: (urls.isNotEmpty && imgList.isEmpty )
          ? AsyncBuilder(
              future: addUrlImagesToList(widget.imageUrls ?? [], imgList),
              waiting: (context) => Center(
                child: CircularProgressIndicator(
                  color: Palette.current.primaryNeonGreen,
                  backgroundColor: Colors.white,
                ),
              ),
              builder: (BuildContext context, value) {
              return  (MultiImageSlide(
                  imgList: imgList,
                  addPhoto: () => selectImages(),
                  onRemove: (index) {
                    setState(() {            
                      imgList.removeAt(index);
                    });
                  },
                ));
              },
            )
          : MultiImageSlide(
              imgList: imgList,
              addPhoto: () => selectImages(),
              onRemove: (index) {
                removeImage(index, imgList);
              },
            ),
    );
  }

  Future<void> selectImages() async {
    // Pick an image
    removedImages = false;
    try {
      final List<XFile> selectedImages = await imagePicker.pickMultiImage();

      if ((selectedImages.length + imgList.length) <= 6) {
        scaleDownXFile(selectedImages);
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

  void removeImage(int index, List<File> imgList){
    if(imgList.length == 1){
      setState(() {
        tempFiles = [];
        urls = [];
        removedImages = true;
      });
      
    }
    setState(() {
                  imgList.removeAt(index);
                });
  }

  Future<void> scaleDownXFile(List<XFile> xFiles,
      {int maxWidth = 800, int maxHeight = 800, int quality = 75}) async {
    for (final image in xFiles) {
      final index = xFiles.indexOf(image);

      final filePath = xFiles[index].path;
      final bytes = await xFiles[index].readAsBytes();

      final compressedBytes = await FlutterImageCompress.compressWithList(
        bytes,
        minHeight: maxHeight,
        minWidth: maxWidth,
        quality: quality,
      );

      final file = File(filePath);
      await file.writeAsBytes(compressedBytes);

      imgList.add(file);
    }   
    setState(() {
       widget.getImageFiles(imgList);
    });
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
      final fileName = '${DateTime.now().millisecondsSinceEpoch}.jpg';
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
      List<dynamic> imageUrls, List<File> imgList) async {
    for (String imageUrl in imageUrls) {
      try {
        final xFile = await downloadImageAndGetXFile(imageUrl);
        scaleDownOneXFile(xFile);

        print('Image added to the list: $imageUrl');
      } catch (e) {
        print('Error downloading image: $e');
      }
    } 
    
  }

  Future<void> scaleDownOneXFile(XFile xFile,
      {int maxWidth = 800, int maxHeight = 800, int quality = 75}) async {
    final filePath = xFile.path;
    final bytes = await xFile.readAsBytes();

    final compressedBytes = await FlutterImageCompress.compressWithList(
      bytes,
      minHeight: maxHeight,
      minWidth: maxWidth,
      quality: quality,
    );

    final file = File(filePath);
    await file.writeAsBytes(compressedBytes);

    imgList.add(file);
    setState(() {
       widget.getImageFiles(imgList);
        print(imgList);  
    });    
  }

  
}
