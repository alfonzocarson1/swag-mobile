import 'dart:io';

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
  final status = await permission.status;
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

Future<File?> selectImagesAndHandlePermissions(
  BuildContext context,
  ImageSource source,
) async {
  await handlePermissionsForImagePicker(context, source);
  final picker = ImagePicker();
  final XFile? xFileImage = await picker.pickImage(
    source: source,
    maxHeight: 800,
    maxWidth: 600,
  );
  if (xFileImage == null) return null;
  return File(xFileImage.path);
}
