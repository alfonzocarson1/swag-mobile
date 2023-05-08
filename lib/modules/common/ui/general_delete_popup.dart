import 'package:flutter/material.dart';
import '../utils/palette.dart';

class GeneralDeletePopup extends StatefulWidget {
  const GeneralDeletePopup({super.key, required this.title, required this.message, required this.options, this.model, required this.onSubmit});

  final String title;
  final String message;
  final List<String> options;
  final dynamic model;
  final Function onSubmit;

  @override
  State<GeneralDeletePopup> createState() => _GeneralDeletePopupState();
}

class _GeneralDeletePopupState extends State<GeneralDeletePopup> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        color: Palette.current.blackSmoke,
        child: Column(
          children: [
          Text(widget.title),
          Text(widget.message),
          SingleChildScrollView(
            child: ListBody(
              children: widget.options.map((option) => 
              CheckboxListTile(
                value: _isChecked, 
                onChanged:(valueCheck) {
                  setState(() {
                    _isChecked=valueCheck;
                  });
                },
                )).toList(),
            ),
          )
          ],
        ),
      ),
    );
  }
}