import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/ui/grant_permission_popup.dart';


  

 Future<void> handleCameraPermissions({required BuildContext context, required Function afterPermissionsHandled})async {


    const cameraPermission =  Permission.camera;
    final cameraStatus = await cameraPermission.status;

    if (cameraStatus.isGranted ) {
         afterPermissionsHandled();      
    }
      
    else if (cameraStatus.isPermanentlyDenied) {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.camera,
        ),
      );
    } 
    else if ( cameraStatus.isDenied ) {
      await cameraPermission.request();
       
       if (cameraStatus.isGranted ) {
         afterPermissionsHandled();      
    }

    }   
    
    
    else {
      await showDialog(
        context: context,
        builder: (context) => const GrantPermissionDialog(
          type: GrantPermissionDialogType.camera,
        ),
      );
    }

  }

