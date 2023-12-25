import 'package:json_annotation/json_annotation.dart';

import 'response.dart';

part 'json_data_model.g.dart';

@JsonSerializable()
class JsonDataModel {
	@JsonKey(name: 'http_status_code') 
	String? httpStatusCode;
	Response? response;

  JsonDataModel({this.httpStatusCode, this.response});

	factory JsonDataModel.fromJson(Map<String, dynamic> json) {
		return _$JsonDataModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$JsonDataModelToJson(this);
}
