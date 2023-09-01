import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/ui/grant_permission_popup.dart';


  
int androidCounter = 0;
 Future<void> handleCameraPermissions({required BuildContext context, required Function afterPermissionsHandled})async {


    const cameraPermission =  Permission.camera;
    final cameraStatus = await cameraPermission.status;

    if (cameraStatus.isGranted ) {
         afterPermissionsHandled();      
    }
      
    else if ( cameraStatus.isDenied ) {
     var status = await cameraPermission.request();

     if(Platform.isAndroid &&  status.isDenied){
         androidCounter += 1;       
     }
     else if(androidCounter == 1 && status.isPermanentlyDenied){
       androidCounter += 1;
     }
     else if(status.isPermanentlyDenied && androidCounter >1){
             await showDialog(
         context: context,
         builder: (context) => const GrantPermissionDialog(
           type: GrantPermissionDialogType.camera,
         ),
       );
     }

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

