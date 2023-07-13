import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class GrantPermissionPopup extends StatelessWidget {
  const GrantPermissionPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
            title: Text('Camera Permission Required'),
            content: Text('Please grant camera permission in the system settings.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                  openAppSettings();
                },
              ),
            ],
          );
  }
}