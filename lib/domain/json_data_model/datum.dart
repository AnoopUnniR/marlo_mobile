import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	String? id;
	String? amount;
	String? status;
	String? sourceId;
	String? sourceType;
	String? transactionType;
	String? currency;
	DateTime? createdAt;
	String? fee;
	String? description;
	dynamic settledAt;
	DateTime? estimatedSettledAt;
	String? currency1;

	Datum({
		this.id, 
		this.amount, 
		this.status, 
		this.sourceId, 
		this.sourceType, 
		this.transactionType, 
		this.currency, 
		this.createdAt, 
		this.fee, 
		this.description, 
		this.settledAt, 
		this.estimatedSettledAt, 
		this.currency1, 
	});

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);
}
