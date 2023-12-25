import 'package:marlo_app_mmobile/core/enums/transaction_enums.dart';
import 'package:marlo_app_mmobile/presentation/transaction_page/bottom_sheet/widgets/time_range_choice_widget.dart';

class SelectedFilterResults {
  FilterMoney? fiterMoney;
  FilterStatuses? filteredStatus;
  List<String> selectedAccount;
  String minimumAmount;
  String maximumAmount;
  CustomDateTime? customPickeddate;
  FilterTimeRanges? filterTimeRanges;

  SelectedFilterResults(
      {required this.filteredStatus,
      required this.selectedAccount,
      required this.fiterMoney,
      required this.minimumAmount,
      required this.maximumAmount,
      required this.customPickeddate,
      required this.filterTimeRanges});
}
