// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonDataModel _$JsonDataModelFromJson(Map<String, dynamic> json) =>
    JsonDataModel(
      httpStatusCode: json['http_status_code'] as String?,
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JsonDataModelToJson(JsonDataModel instance) =>
    <String, dynamic>{
      'http_status_code': instance.httpStatusCode,
      'response': instance.response,
    };
