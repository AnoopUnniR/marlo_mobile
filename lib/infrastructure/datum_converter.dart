import 'dart:convert';
import 'package:marlo_app_mmobile/core/json_data.dart';
import 'package:marlo_app_mmobile/domain/datum_model/datum_model.dart';
import 'package:marlo_app_mmobile/domain/json_data_model/json_data_model.dart';


// to add company names to the json data that was given
class DatumConverted {
  List<String> companyNameList = [
    "Globex maritime",
    "GBP to USD",
    "Mari Car Pte Ltd",
    "ACME corporation",
    "Umbrella Corporation",
    "Marblue pte ltd",
    "Company Ltd",
    "Umbrella Corporation",
    "Mari Car Pte Ltd",
    "Marblue pte ltd",
  ];

  datumConverter() {
    JsonDataModel jsonDataModel = JsonDataModel.fromJson(
      jsonDecode(jsonDataRaw),
    );
    List<DatumModel> data = [];
    for (int i = 0; i < jsonDataModel.response!.data!.length; i++) {
      DatumModel model = DatumModel(
          data: jsonDataModel.response!.data![i],
          companyName: companyNameList[i]);
      data.add(model);
    }
    return data;
  }
}
