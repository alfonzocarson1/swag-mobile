import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'grant_permission_popup.dart';

Future<void> handlePermissionsForImagePicker(
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
  if(Platform.isAndroid){
    status = await permission.request();
  }else{
     status = await permission.status;
  }
  
  if (status.isPermanentlyDenied) {
    await showDialog(
      context: context,
      builder: (context) => GrantPermissionDialog(
        type: type,
      ),
    );
  } else if (status.isDenied) {
    await permission.request();
  }
}

Future<File?> selectImageAndHandlePermissions(
  BuildContext context,
  ImageSource source,
) async {
   final androidInfo = await DeviceInfoPlugin().androidInfo;
    if (androidInfo.version.sdkInt <= 32 || Platform.isIOS) {
      await handlePermissionsForImagePicker(context, source);
  }

  final picker = ImagePicker();
  final XFile? xFileImage = await picker.pickImage(
    source: source,
    maxHeight: 800,
    maxWidth: 600,
  );
  if (xFileImage == null) return null;
  return File(xFileImage.path);
}

Future<List<XFile>> selectMultipleImagesAndHandlePermissions(
  BuildContext context, {
  int? imageQuality,
}) async {
   final androidInfo = await DeviceInfoPlugin().androidInfo;
   if (androidInfo.version.sdkInt <= 32 || Platform.isIOS){
     await handlePermissionsForImagePicker(context, ImageSource.gallery);
  }
  
  final picker = ImagePicker();
  final files = await picker.pickMultiImage(
    imageQuality: imageQuality,
  );
  return files;
}
