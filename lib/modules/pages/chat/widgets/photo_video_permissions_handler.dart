import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/ui/grant_permission_popup.dart';


  

 Future<void> handlePhotoVideoPermissions({required BuildContext context, required Function afterPermissionsHandled})async {


    const cameraPermission =  Permission.camera;
    const microphonePermission =  Permission.microphone;

    final cameraStatus = await cameraPermission.status;
    final microphoneStatus = await microphonePermission.status;


    if (cameraStatus.isGranted &&
        microphoneStatus.isGranted) {
         afterPermissionsHandled();      
    }
     else if (cameraStatus.isPermanentlyDenied && microphoneStatus.isPermanentlyDenied) {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.cameraMicrophone,
        ),
      );
    }     
    else if (cameraStatus.isPermanentlyDenied) {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.camera,
        ),
      );
    } else if (microphoneStatus.isPermanentlyDenied ) {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.microphone,
        ),
      );
    } 
    else if ( cameraStatus.isDenied ) {
      await Permission.camera.request();
      await Permission.microphone.request();
    } 
    else if(microphoneStatus.isDenied){
       await Permission.microphone.request();
       await Permission.camera.request();
    }
    
    else if (microphoneStatus.isGranted &&  (cameraStatus.isPermanentlyDenied ||
        cameraStatus.isDenied) 
       )  {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.camera,
        ),
      );
    }
    else if (cameraStatus.isGranted &&  (microphoneStatus.isPermanentlyDenied ||
        microphoneStatus.isDenied) 
       )  {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.microphone,
        ),
      );
    }      
    
    else {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.cameraMicrophone,
        ),
      );
    }

  }

