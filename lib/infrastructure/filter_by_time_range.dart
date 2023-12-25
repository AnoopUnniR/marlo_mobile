import 'package:marlo_app_mmobile/application/transaction/transaction_page_bloc.dart';
import 'package:marlo_app_mmobile/core/enums/transaction_enums.dart';
import 'package:marlo_app_mmobile/domain/datum_model/datum_model.dart';

class FilterByTimeRange {
  static List<DatumModel> filterByTimeRange(
      {required FilteredResult event, required List<DatumModel> result}) {
    DateTime currentDate = DateTime.now();
    if (event.filterTimeRanges == FilterTimeRanges.custom) {
      List<DatumModel> temp = result.where((element) {
        return element.data.createdAt!
                .isAfter(event.coustomPickedDate!.startDate!) &&
            element.data.createdAt!.isBefore(event.coustomPickedDate!.endDate!);
      }).toList();
      return temp;
    } else if (event.filterTimeRanges == FilterTimeRanges.today) {
      List<DatumModel> temp = result.where((element) {
        return element.data.createdAt != null &&
            element.data.createdAt!.year == currentDate.year &&
            element.data.createdAt!.month == currentDate.month &&
            element.data.createdAt!.day == currentDate.day;
      }).toList();
      return temp;
    } else if (event.filterTimeRanges == FilterTimeRanges.thisWeek) {
      List<DatumModel> temp = result.where((element) {
        DateTime startOfWeek =
            currentDate.subtract(Duration(days: currentDate.weekday - 1));
        DateTime endOfWeek = startOfWeek.add(const Duration(days: 6));
        return element.data.createdAt != null &&
            element.data.createdAt!.isAfter(startOfWeek) &&
            element.data.createdAt!.isBefore(endOfWeek);
      }).toList();
      return temp;
    } else if (event.filterTimeRanges == FilterTimeRanges.thisMonth) {
      List<DatumModel> temp = result.where((element) {
        DateTime startOfMonth =
            DateTime(currentDate.year, currentDate.month, 1);
        DateTime endOfMonth =
            DateTime(currentDate.year, currentDate.month + 1, 1)
                .subtract(const Duration(days: 1));

        return element.data.createdAt != null &&
            element.data.createdAt!.isAfter(startOfMonth) &&
            element.data.createdAt!.isBefore(endOfMonth);
      }).toList();
      return temp;
    } else {
      List<DatumModel> temp = result.where((element) {
        int quarterStartMonth = (currentDate.month - 1) ~/ 3 * 3 + 1;
        DateTime startOfQuarter =
            DateTime(currentDate.year, quarterStartMonth, 1);
        DateTime endOfQuarter = startOfQuarter.add(const Duration(days: 89));
        return element.data.createdAt != null &&
            element.data.createdAt!.isAfter(startOfQuarter) &&
            element.data.createdAt!.isBefore(endOfQuarter);
      }).toList();
      return temp;
    }
  }
}
