import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyTextInputFormatter extends TextInputFormatter {
  final regex = RegExp(r'[0-9\.]');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    for (final c in newValue.text.characters) {
      if (!regex.hasMatch(c)) {
        return oldValue;
      }
    }

    if (newValue.text.characters.where((c) => c == ".").toList().length >= 2) {
      return oldValue;
    }

    if (newValue.text == ".") {
      return newValue;
    }

    if (double.tryParse(newValue.text) == null) {
      return oldValue;
    }

    return newValue;
  }
}
