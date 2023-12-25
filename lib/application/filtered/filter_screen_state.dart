part of 'filter_screen_bloc.dart';

@freezed
class FilterScreenState with _$FilterScreenState {
  const factory FilterScreenState.filtered(
      {required FilterMoney? filterMoney,
      required FilterStatuses? filterStatuses,
      required FilterTimeRanges? filterTimeRanges,
      required CustomDateTime? coustomPickedDate,
      required List<String> selectedCurrencies}) = Filtered;
  factory FilterScreenState.initial() => const FilterScreenState.filtered(
      filterMoney: null,
      filterStatuses: null,
      filterTimeRanges: null,
      coustomPickedDate: null,
      selectedCurrencies: []);
}
