part of 'transaction_page_bloc.dart';

@freezed
class TransactionPageState with _$TransactionPageState {
  const factory TransactionPageState.startedState(
      {required List<DatumModel> data,
      required bool isLoading,
      required List<DatumModel> filteredList,
      required List selectedFilters,
       SelectedFilterResults? selectedFilterResults}) = StartedState;
  factory TransactionPageState.initial() =>
      const TransactionPageState.startedState(
          data: [], isLoading: false, filteredList: [],selectedFilters: [],);
}
