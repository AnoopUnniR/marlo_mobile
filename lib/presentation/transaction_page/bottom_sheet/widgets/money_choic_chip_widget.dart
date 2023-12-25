import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'package:marlo_app_mmobile/core/enums/transaction_enums.dart';

class MoneyChoicChipWidget extends StatelessWidget {
  const MoneyChoicChipWidget({
    required this.state,
    super.key,
  });
  final FilterScreenState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChoiceChip(
          side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('Money In'),
          selected: state.filterMoney == FilterMoney.moneyIn,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterMoney.moneyIn);
          },
        ),
        sbw10,
        ChoiceChip(
          side: const BorderSide(color: Colors.transparent),
          selectedColor: Colors.blue.shade100,
          showCheckmark: false,
          label: const Text('Money Out'),
          selected: state.filterMoney == FilterMoney.moneyOut,
          onSelected: (selected) {
            choiceChipIsSelected(context, FilterMoney.moneyOut);
          },
        ),
      ],
    );
  }

  choiceChipIsSelected(BuildContext context, FilterMoney filtermoney) {
    if (state.filterMoney == filtermoney) {
      BlocProvider.of<FilterScreenBloc>(context).add(
        FilterScreenEvent.selected(
            filterStatuses: state.filterStatuses,
            filterMoney: null,
            filterTimeRanges: state.filterTimeRanges,
            customDatePicked: state.coustomPickedDate,
            selectedCurrencies: state.selectedCurrencies),
      );
      return;
    }
    BlocProvider.of<FilterScreenBloc>(context).add(
      FilterScreenEvent.selected(
          filterStatuses: state.filterStatuses,
          filterMoney: filtermoney,
          filterTimeRanges: state.filterTimeRanges,
          customDatePicked: state.coustomPickedDate,
          selectedCurrencies: state.selectedCurrencies),
    );
  }
}
