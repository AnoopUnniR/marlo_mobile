import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marlo_app_mmobile/core/enums/transaction_enums.dart';
import 'package:marlo_app_mmobile/presentation/transaction_page/bottom_sheet/widgets/time_range_choice_widget.dart';

part 'filter_screen_event.dart';
part 'filter_screen_state.dart';
part 'filter_screen_bloc.freezed.dart';


//for controlling the state management of the filter screen
class FilterScreenBloc extends Bloc<FilterScreenEvent, FilterScreenState> {
  FilterScreenBloc() : super(FilterScreenState.initial()) {
    on<Selected>(
      (event, emit) {
        emit(
          state.copyWith(
            filterMoney: event.filterMoney,
            filterStatuses: event.filterStatuses,
            filterTimeRanges: event.filterTimeRanges,
            coustomPickedDate: event.customDatePicked,
            selectedCurrencies: event.selectedCurrencies
          ),
        );
      },
    );
  }
}
