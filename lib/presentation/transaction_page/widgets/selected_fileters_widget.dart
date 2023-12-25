import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/application/transaction/transaction_page_bloc.dart';

class SelectedFiletersWidget extends StatelessWidget {
  const SelectedFiletersWidget({
    required this.state,
    super.key,
  });
  final TransactionPageState state;
  @override
  Widget build(BuildContext context) {
    if (state.selectedFilterResults == null) {
      return const SizedBox();
    }

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        if (state.selectedFilterResults!.fiterMoney != null)
          buildFilterChip(
            label: state.selectedFilterResults!.fiterMoney
                .toString()
                .split('.')
                .last,
            onDelete: () {
              _onDelete(context, filterMoney: true);
            },
          ),
        if (state.selectedFilterResults!.filteredStatus != null)
          buildFilterChip(
            label: state.selectedFilterResults!.filteredStatus
                .toString()
                .split('.')
                .last,
            onDelete: () {
              _onDelete(context, filterStatuses: true);
            },
          ),
        if (state.selectedFilterResults!.selectedAccount.isNotEmpty)
          buildFilterChip(
            label:
                'Accounts ${state.selectedFilterResults!.selectedAccount.length}',
            onDelete: () {
              _onDelete(context, selectedAccount: true);
            },
          ),
        if (state.selectedFilterResults!.filterTimeRanges != null)
          buildFilterChip(
            label: state.selectedFilterResults!.filterTimeRanges
                .toString()
                .split(".")
                .last,
            onDelete: () {
              _onDelete(context, selectedTimerange: true);
            },
          ),
        if (state.selectedFilterResults!.minimumAmount.isNotEmpty &&
            state.selectedFilterResults!.maximumAmount.isNotEmpty)
          buildFilterChip(
            label:
                '${state.selectedFilterResults!.minimumAmount}-${state.selectedFilterResults!.maximumAmount}',
            onDelete: () {
              _onDelete(context, selectedAmount: true);
            },
          ),
      ],
    );
  }

  Widget buildFilterChip({
    required String label,
    required VoidCallback onDelete,
  }) {
    return Chip(
      onDeleted: onDelete,
      deleteIcon: const Icon(
        Icons.close,
        color: Colors.blue,
      ),
      label: Text(label),
    );
  }

  void _onDelete(BuildContext context,
      {bool filterMoney = false,
      bool filterStatuses = false,
      bool selectedAccount = false,
      bool selectedTimerange = false,
      bool selectedAmount = false}) {
    BlocProvider.of<TransactionPageBloc>(context).add(
      TransactionPageEvent.filteredResult(
        filterMoney:
            filterMoney ? null : state.selectedFilterResults!.fiterMoney,
        filterStatuses:
            filterStatuses ? null : state.selectedFilterResults!.filteredStatus,
        filterTimeRanges: selectedTimerange
            ? null
            : state.selectedFilterResults!.filterTimeRanges,
        coustomPickedDate: state.selectedFilterResults!.customPickeddate,
        minimumAmount:
            selectedAmount ? "" : state.selectedFilterResults!.minimumAmount,
        maximumAmount:
            selectedAmount ? "" : state.selectedFilterResults!.maximumAmount,
        selectedCurrency:
            selectedAccount ? [] : state.selectedFilterResults!.selectedAccount,
      ),
    );
    BlocProvider.of<FilterScreenBloc>(context).add(FilterScreenEvent.selected(
        filterMoney: filterMoney ? null : state.selectedFilterResults!.fiterMoney,
        filterStatuses: filterStatuses ? null : state.selectedFilterResults!.filteredStatus,
        filterTimeRanges: selectedTimerange
            ? null
            : state.selectedFilterResults!.filterTimeRanges,
        selectedCurrencies:  selectedAccount ? [] : state.selectedFilterResults!.selectedAccount,
        ));
  }
}
