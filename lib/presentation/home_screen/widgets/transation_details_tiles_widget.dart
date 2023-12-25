import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:marlo_app_mmobile/domain/datum_model/datum_model.dart';
import 'package:marlo_app_mmobile/infrastructure/amount_widget.dart';

class TransationDetailsTilesWidget extends StatelessWidget {
  const TransationDetailsTilesWidget({
    super.key,
    required this.datum,
  });
  final DatumModel datum;
  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('EEE dd MMM h:mm a').format(datum.data.createdAt!);
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.green.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_outward_outlined,
          color: Colors.white,
        ),
      ),
      title: Text(datum.companyName),
      subtitle: Text(formattedDate,
          style: const TextStyle(fontSize: 11, color: Colors.black54)),
      trailing: formatMoney(datum.data.amount!, datum.data.currency!),
    );
  }
}
