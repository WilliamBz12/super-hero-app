part of 'heros_cubit.dart';

@freezed
abstract class HerosState with _$HerosState {
  const factory HerosState.loadInitial() = Initial;
  const factory HerosState.loadLoading() = Loading;
  const factory HerosState.loadLoadded(List<HeroModel> data) = Loaded;
  const factory HerosState.loadFailure(String message) = Failure;
}
