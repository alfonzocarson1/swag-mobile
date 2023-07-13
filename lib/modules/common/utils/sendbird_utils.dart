
import 'dart:convert';

abstract class SendBirdUtils {

  static Map<String, dynamic> getFormatedData(String data) {

    String stringData = json.encode(data.replaceAll("'", '"').replaceAll('None', 'null'));
    String formatedData = stringData.replaceAll('\\', "");
    Map<String, dynamic> mapedData =
          json.decode(formatedData.substring(1, formatedData.length - 1));
    return mapedData;
  }
}

