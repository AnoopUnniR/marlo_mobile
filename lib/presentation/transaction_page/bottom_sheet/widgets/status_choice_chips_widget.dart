import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'package:marlo_app_mmobile/core/enums/transaction_enums.dart';

class StatusChoiceChipsWidget extends StatelessWidget {
  const StatusChoiceChipsWidget({
    required this.state,
    super.key,
  });
  final FilterScreenState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChoiceChip(side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('Completed'),
          selected: state.filterStatuses == FilterStatuses.completed,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterStatuses.completed);
          },
        ),
        sbw10,
        ChoiceChip(side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('Pending'),
          selected: state.filterStatuses == FilterStatuses.pending,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterStatuses.pending);
          },
        ),
        sbw10,
        ChoiceChip(side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('Cancelled'),
          selected: state.filterStatuses == FilterStatuses.cancelled,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterStatuses.cancelled);
          },
        ),
      ],
    );
  }

//this function updates the ui to show which choice is selected and also
//removes the selected chip if the user does not want to select any values
  choiceChipIsSelected(BuildContext context, FilterStatuses filterStatuses) {
    if (state.filterStatuses == filterStatuses) {
      BlocProvider.of<FilterScreenBloc>(context).add(
        FilterScreenEvent.selected(
            filterStatuses: null,
            filterMoney: state.filterMoney,
            filterTimeRanges: state.filterTimeRanges,
            selectedCurrencies: state.selectedCurrencies),
      );
      return;
    }
    BlocProvider.of<FilterScreenBloc>(context).add(
      FilterScreenEvent.selected(
          filterStatuses: filterStatuses,
          filterMoney: state.filterMoney,
          filterTimeRanges: state.filterTimeRanges,
          selectedCurrencies: state.selectedCurrencies),
    );
  }
}
