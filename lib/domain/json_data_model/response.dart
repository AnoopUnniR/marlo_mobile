import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'response.g.dart';

@JsonSerializable()
class Response {
	@JsonKey(name: 'error_flag') 
	String? errorFlag;
	String? message;
	List<Datum>? data;

	Response({this.errorFlag, this.message, this.data});

	factory Response.fromJson(Map<String, dynamic> json) {
		return _$ResponseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResponseToJson(this);
}
