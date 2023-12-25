part of 'transaction_page_bloc.dart';

@freezed
class TransactionPageEvent with _$TransactionPageEvent {
  const factory TransactionPageEvent.started(List<DatumModel> data) = _Started;
  const factory TransactionPageEvent.search(
      {required List<DatumModel> data,
      required String searchQuery,}) = Search;
  const factory TransactionPageEvent.filteredResult({
    required FilterMoney? filterMoney,
    required FilterStatuses? filterStatuses,
    required FilterTimeRanges? filterTimeRanges,
    required CustomDateTime? coustomPickedDate,
    required String minimumAmount,
    required String maximumAmount,
    required List<String> selectedCurrency,
  }) = FilteredResult;
}
