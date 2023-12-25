part of 'filter_screen_bloc.dart';

@freezed
class FilterScreenEvent with _$FilterScreenEvent {
  const factory FilterScreenEvent.started() = _Started;
  const factory FilterScreenEvent.selected(
      {required FilterMoney? filterMoney,
      required FilterStatuses? filterStatuses,
      required FilterTimeRanges? filterTimeRanges,
      CustomDateTime? customDatePicked,
      required List<String> selectedCurrencies}) = Selected;
}
