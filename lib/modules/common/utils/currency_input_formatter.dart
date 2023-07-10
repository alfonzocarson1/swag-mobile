import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else if (newValue.text == ".") {
      return newValue.copyWith(
        text: '0.00',
        selection: const TextSelection.collapsed(offset: 2),
      );
    } else {
      NumberFormat f = NumberFormat("#,###,###.00", "en_US");
      double newNumber = 0;
      if ((!newValue.text.contains(".")) && oldValue.text.contains('.')) {
        String tempString = newValue.text.replaceAll(f.symbols.GROUP_SEP, '');
        var first = tempString.substring(0, tempString.length - 2);
        if (first.isNotEmpty &&
            first[first.length - 1] == '0' &&
            oldValue.text.contains('.') &&
            oldValue.selection.baseOffset > oldValue.text.indexOf('.')) {
          first = first.substring(0, first.length - 1);
        }
        tempString = "$first.${tempString.substring(tempString.length - 2)}";
        newNumber = double.parse(tempString);
      } else {
        newNumber = double.parse(newValue.text
            .replaceAll(f.symbols.GROUP_SEP, '')
            .replaceAll("..", '.'));
      }
      String newString = f.format(newNumber);
      int cursorPosition = 0;
      if (oldValue.text.length > newString.length) {
        cursorPosition = -1;
        if (newString.startsWith('.')) {
          newString = '0$newString';
          cursorPosition = 0;
        }
      } else if (oldValue.text.length < newString.length) {
        cursorPosition = 1;
      } else {
        if (oldValue.text.replaceAll(f.symbols.GROUP_SEP, '').length >
            newValue.text.replaceAll(f.symbols.GROUP_SEP, '').length) {
          cursorPosition = -1;
          if (newString == "0.00" && oldValue.selection.baseOffset == 0) {
            newString = "";
          }
        } else if (oldValue.text.replaceAll(f.symbols.GROUP_SEP, '').length <
            newValue.text.replaceAll(f.symbols.GROUP_SEP, '').length) {
          cursorPosition = 1;
        } else if (oldValue.selection.extentOffset >
            oldValue.selection.baseOffset) {
          cursorPosition =
              oldValue.selection.baseOffset - oldValue.selection.extentOffset;
          newString =
              newString.substring(0, oldValue.selection.baseOffset - 1) +
                  newString.substring(oldValue.selection.baseOffset + 1);
          newNumber = double.parse(newString
              .replaceAll(f.symbols.GROUP_SEP, '')
              .replaceAll("..", '.'));
          newString = f.format(newNumber);
          if (newString == "0.00" && oldValue.selection.baseOffset == 0) {
            newString = "";
          }
        }
      }
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(
            offset: oldValue.selection.extent.offset +
                cursorPosition +
                (f.symbols.GROUP_SEP.allMatches(newString).length -
                    f.symbols.GROUP_SEP.allMatches(oldValue.text).length)),
      );
    }
  }
}
