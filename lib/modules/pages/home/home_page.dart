import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(S.of(context).app_name),
      ),
    );
  }
}
