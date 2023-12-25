part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.reload({
    required List<DatumModel>? data,
  }) = Reload;
   factory HomeScreenState.initial() =>const HomeScreenState.reload(data: []);
}
