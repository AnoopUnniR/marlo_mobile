import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'package:marlo_app_mmobile/core/enums/transaction_enums.dart';

class TimeRangeChoiceWidget extends StatelessWidget {
  const TimeRangeChoiceWidget({super.key, required this.state});
  final FilterScreenState state;

  @override
  Widget build(BuildContext context) {
    String? customPickedDate = customeDateTime(state.coustomPickedDate);
    return Wrap(
      children: [
        ChoiceChip(
          side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: Text(customPickedDate ?? 'Custom'),
          selected: state.coustomPickedDate != null,
          onSelected: (selected) {
            DateTime? endDate;
            DateTime? startDate;
            showCustomDateRangePicker(
              context,
              dismissible: true,
              minimumDate: DateTime.now().subtract(const Duration(days: 200)),
              maximumDate: DateTime.now(),
              endDate: endDate,
              startDate: startDate,
              backgroundColor: Colors.white,
              primaryColor: Colors.green,
              onApplyClick: (start, end) {
                endDate = end;
                startDate = start;

                BlocProvider.of<FilterScreenBloc>(context).add(
                  FilterScreenEvent.selected(
                    filterStatuses: state.filterStatuses,
                    filterMoney: state.filterMoney,
                    filterTimeRanges: state.filterTimeRanges,
                    selectedCurrencies: state.selectedCurrencies,
                    customDatePicked: CustomDateTime(
                      endDate: endDate,
                      startDate: startDate,
                    ),
                  ),
                );
              },
              onCancelClick: () {
                endDate = null;
                startDate = null;
                BlocProvider.of<FilterScreenBloc>(context).add(
                  FilterScreenEvent.selected(
                      filterStatuses: state.filterStatuses,
                      filterMoney: state.filterMoney,
                      filterTimeRanges: state.filterTimeRanges,
                      customDatePicked: null,
                      selectedCurrencies: state.selectedCurrencies),
                );
              },
            );
            choiceChipIsSelected(context, FilterTimeRanges.custom);
          },
        ),
        sbw10,
        ChoiceChip(
          side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('Today'),
          selected: state.filterTimeRanges == FilterTimeRanges.today,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterTimeRanges.today);
          },
        ),
        sbw10,
        ChoiceChip(
          side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('This week'),
          selected: state.filterTimeRanges == FilterTimeRanges.thisWeek,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterTimeRanges.thisWeek);
          },
        ),
        sbw10,
        ChoiceChip(
          side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('This month'),
          selected: state.filterTimeRanges == FilterTimeRanges.thisMonth,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterTimeRanges.thisMonth);
          },
        ),
        sbw10,
        ChoiceChip(
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('This quarter'),
          selected: state.filterTimeRanges == FilterTimeRanges.thisQuarter,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterTimeRanges.thisQuarter);
          },
        ),
      ],
    );
  }

  choiceChipIsSelected(
      BuildContext context, FilterTimeRanges filterTimeRanges) {
    if (state.filterTimeRanges == filterTimeRanges) {
      BlocProvider.of<FilterScreenBloc>(context).add(
        FilterScreenEvent.selected(
            filterStatuses: state.filterStatuses,
            filterMoney: state.filterMoney,
            filterTimeRanges: null,
            selectedCurrencies: state.selectedCurrencies),
      );
      return;
    }
    BlocProvider.of<FilterScreenBloc>(context).add(
      FilterScreenEvent.selected(
          filterStatuses: state.filterStatuses,
          filterMoney: state.filterMoney,
          filterTimeRanges: filterTimeRanges,
          selectedCurrencies: state.selectedCurrencies),
    );
  }
}

class CustomDateTime {
  DateTime? startDate;
  DateTime? endDate;
  CustomDateTime({required this.endDate, required this.startDate});
}

String? customeDateTime(CustomDateTime? dateCustom) {
  if (dateCustom == null) return null;
  String converterdEndDate = DateFormat('dd-MMM').format(dateCustom.endDate!);
  String converterdStartDate =
      DateFormat('dd-MMM').format(dateCustom.startDate!);
  String date = "$converterdStartDate - $converterdEndDate";

  return date;
}
