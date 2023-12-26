import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marlo_app_mmobile/core/enums/transaction_enums.dart';
import 'package:marlo_app_mmobile/domain/datum_model/datum_model.dart';
import 'package:marlo_app_mmobile/infrastructure/datum_converter.dart';
import 'package:marlo_app_mmobile/presentation/transaction_page/bottom_sheet/widgets/time_range_choice_widget.dart';

import '../../domain/objects/selected_filter_results.dart';
import '../../infrastructure/filter_by_time_range.dart';

part 'transaction_page_event.dart';
part 'transaction_page_state.dart';
part 'transaction_page_bloc.freezed.dart';

///for controlling the state management of the transaction list screen
class TransactionPageBloc
    extends Bloc<TransactionPageEvent, TransactionPageState> {
  TransactionPageBloc() : super(TransactionPageState.initial()) {
    on<_Started>((event, emit) {
      return emit(state.copyWith(data: event.data));
    });
    //function to sort according to the search querries
    on<Search>((event, emit) {
      emit(state.copyWith(isLoading: true));
      List<DatumModel> tempList = event.data
          .where((element) => element.companyName
              .toLowerCase()
              .contains(event.searchQuery.toLowerCase()))
          .toList();
      return emit(state.copyWith(
          isLoading: false, data: tempList, filteredList: event.data));
    });
    //to sort data according to the selected filter 
    on<FilteredResult>((event, emit) {
      List<String> selectedFilters = [];
      emit(state.copyWith(isLoading: true));
      List<DatumModel> data = DatumConverted().datumConverter();
      List<DatumModel> result = [...data];
      //if the filter is cleared we will show the entire data available using this
      if (event.filterMoney == null &&
          event.filterStatuses == null &&
          event.coustomPickedDate == null &&
          event.filterTimeRanges == null &&
          event.maximumAmount.isEmpty &&
          event.minimumAmount.isEmpty &&
          event.selectedCurrency.isEmpty) {
        //updates the filter screen to remove seleted fields
        SelectedFilterResults selectedFilterResults = SelectedFilterResults(
            filteredStatus: event.filterStatuses,
            fiterMoney: event.filterMoney,
            maximumAmount: event.maximumAmount,
            minimumAmount: event.minimumAmount,
            selectedAccount: event.selectedCurrency,
            customPickeddate: event.coustomPickedDate,
            filterTimeRanges: event.filterTimeRanges);
        return emit(state.copyWith(
            data: data,
            isLoading: false,
            selectedFilterResults: selectedFilterResults));
      }

      //sorting according to the money in or out
      if (event.filterMoney != null) {
        selectedFilters.add(event.filterMoney.toString());
        
        if (event.filterMoney == FilterMoney.moneyIn) {
           result.where(
              (element) => element.data.amount!.split("").first == "-");
        } else if (event.filterMoney == FilterMoney.moneyOut) {
          result.removeWhere(
              (element) => element.data.amount!.split("").first != "-");
        }
        //----------------------------------------------------------------------
        /// Use this code instead of the above to get debit or credit according 
        /// to the status code and not the amount that was received or paid
        //----------------------------------------------------------------------
        //  if (event.filterMoney == FilterMoney.moneyIn) {
        //   result = result
        //       .where((element) =>
        //           element.data.sourceType == "DEPOSIT" ||
        //           element.data.sourceType == "TRANSFER" ||
        //           element.data.sourceType == "REFUND")
        //       .toList();
        // } else if (event.filterMoney == FilterMoney.moneyOut) {
        //   result = result
        //       .where((element) =>
        //           element.data.sourceType == "PAYOUT" ||
        //           element.data.sourceType == "CHARGE" ||
        //           element.data.sourceType == "PAYMENT_ATTEMPT"||
        //           element.data.sourceType == "FEE",
        //           )
        //       .toList();
        // }
        //----------------------------------------------------------------------
      }
      //sorting according to the status
      if (event.filterStatuses != null) {
        selectedFilters.add(event.filterStatuses.toString());
        if (event.filterStatuses == FilterStatuses.cancelled) {
          result.removeWhere((element) => element.data.status != "CANCELLED");
        } else if (event.filterStatuses == FilterStatuses.completed) {
          result.removeWhere((element) => element.data.status != "SETTLED");
        } else if (event.filterStatuses == FilterStatuses.pending) {
          result.removeWhere((element) => element.data.status != "PENDING");
        }
      }

      //sorting according to the date range
      if (event.filterTimeRanges != null) {
        result =
            FilterByTimeRange.filterByTimeRange(event: event, result: result);
      }

      //sorting according to the selected amount range
      if (event.maximumAmount.isNotEmpty && event.minimumAmount.isNotEmpty) {
        double minAmount = double.parse(event.minimumAmount);
        double maxAmount = double.parse(event.maximumAmount);
        result = result.where((element) {
          double transactionAmount =
              double.parse(element.data.amount!.replaceAll(',', '')).abs();
          return transactionAmount >= minAmount &&
              transactionAmount <= maxAmount;
        }).toList();
      }
      //sorting according to the selected currencies
      if (event.selectedCurrency.isNotEmpty) {
        result = result.where((element) {
          return event.selectedCurrency.contains(element.data.currency1);
        }).toList();
      }

      SelectedFilterResults selectedFilterResults = SelectedFilterResults(
          filteredStatus: event.filterStatuses,
          fiterMoney: event.filterMoney,
          maximumAmount: event.maximumAmount,
          minimumAmount: event.minimumAmount,
          selectedAccount: event.selectedCurrency,
          customPickeddate: event.coustomPickedDate,
          filterTimeRanges: event.filterTimeRanges);

      return emit(state.copyWith(
          data: result,
          isLoading: false,
          selectedFilterResults: selectedFilterResults));
    });
  }
}
