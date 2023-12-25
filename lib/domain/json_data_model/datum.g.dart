// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as String?,
      amount: json['amount'] as String?,
      status: json['status'] as String?,
      sourceId: json['sourceId'] as String?,
      sourceType: json['sourceType'] as String?,
      transactionType: json['transactionType'] as String?,
      currency: json['currency'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      fee: json['fee'] as String?,
      description: json['description'] as String?,
      settledAt: json['settledAt'],
      estimatedSettledAt: json['estimatedSettledAt'] == null
          ? null
          : DateTime.parse(json['estimatedSettledAt'] as String),
      currency1: json['currency1'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'status': instance.status,
      'sourceId': instance.sourceId,
      'sourceType': instance.sourceType,
      'transactionType': instance.transactionType,
      'currency': instance.currency,
      'createdAt': instance.createdAt?.toIso8601String(),
      'fee': instance.fee,
      'description': instance.description,
      'settledAt': instance.settledAt,
      'estimatedSettledAt': instance.estimatedSettledAt?.toIso8601String(),
      'currency1': instance.currency1,
    };
