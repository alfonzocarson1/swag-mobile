import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/ui/grant_permission_popup.dart';
import '../../chats/widgets/chat_camera_page.dart';

class CameraPermissionsHandler {

 static handlePermissions({required BuildContext context, required Function afterPermissionsHandled})async {
     final cameraPermissionStatus = await Permission.camera.request();
    final microphonePermissionStatus = await Permission.microphone.request();

    if (cameraPermissionStatus.isGranted &&
        microphonePermissionStatus.isGranted) {
         afterPermissionsHandled();      
    }   else if ((cameraPermissionStatus.isPermanentlyDenied ||
        cameraPermissionStatus.isDenied) && (microphonePermissionStatus.isPermanentlyDenied ||
        microphonePermissionStatus.isDenied))  {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.cameraMicrophone,
        ),
      );
    }    
    else if (cameraPermissionStatus.isPermanentlyDenied ||
        cameraPermissionStatus.isDenied) {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.camera,
        ),
      );
    } else if (microphonePermissionStatus.isPermanentlyDenied ||
        microphonePermissionStatus.isDenied) {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.microphone,
        ),
      );
    } else if (microphonePermissionStatus.isGranted &&  (cameraPermissionStatus.isPermanentlyDenied ||
        cameraPermissionStatus.isDenied) 
       )  {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.camera,
        ),
      );
    }
    else if (cameraPermissionStatus.isGranted &&  (microphonePermissionStatus.isPermanentlyDenied ||
        microphonePermissionStatus.isDenied) 
       )  {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.microphone,
        ),
      );
    }      
    
    else {
      debugPrint("----------");
    }

  }

}