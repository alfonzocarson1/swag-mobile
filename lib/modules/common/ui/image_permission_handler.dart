import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'grant_permission_popup.dart';

int androidCounter = 0;

Future<dynamic> imagePermissionHandler(
  bool multipleImages,
  Type? returnType,
  BuildContext context,
  ImageSource source,
) async {
  final Permission permission;
  final GrantPermissionDialogType type;
  switch (source) {
    case ImageSource.camera:
      permission = Permission.camera;
      type = GrantPermissionDialogType.camera;
      break;
    case ImageSource.gallery:
      permission = Permission.photos;
      type = GrantPermissionDialogType.photos;
      break;
  }
  final PermissionStatus status;
  status =  await permission.status;  
   if (status.isDenied) {
    await permission.request();
    if(Platform.isAndroid &&  status.isDenied && androidCounter <2){
         androidCounter += 1;       
     }
       else if(status.isDenied && androidCounter >1){
             await showDialog(
         context: context,
         builder: (context) => const GrantPermissionDialog(
           type: GrantPermissionDialogType.photos,
         ),
       );
     }
  }
  else if (status.isPermanentlyDenied) {
    await showDialog(
      context: context,
      builder: (context) => GrantPermissionDialog(
        type: type,
      ),
    );
  } 
  else{
    if(multipleImages == false){
     final picker = ImagePicker();
  final XFile? xFileImage = await picker.pickImage(
    source: source,
    maxHeight: 800,
    maxWidth: 600,
  );
  if (xFileImage == null) return null;
  if(returnType == XFile){
    return xFileImage;
  }else{
    debugPrint(returnType.toString());
    return File(xFileImage.path);
  }  
    }
    else{
        final picker = ImagePicker();
        final files = await picker.pickMultiImage(
        imageQuality: 70,
  );
  return files;
    }
  }
}