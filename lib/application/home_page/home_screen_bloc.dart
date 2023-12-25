
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marlo_app_mmobile/domain/datum_model/datum_model.dart';
import 'package:marlo_app_mmobile/infrastructure/datum_converter.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    List<DatumModel> data = DatumConverted().datumConverter();
    on<_Started>((event, emit) {
      return emit(state.copyWith(data: data));
    });
  }
}
