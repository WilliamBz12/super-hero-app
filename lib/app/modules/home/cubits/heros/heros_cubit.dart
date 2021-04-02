import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../shared/models/hero_model.dart';
import '../../repositories/hero_repository.dart';

part 'heros_state.dart';
part 'heros_cubit.freezed.dart';

class HerosCubit extends Cubit<HerosState> {
  final HeroRepository _repository;
  HerosCubit(this._repository) : super(HerosState.loadInitial());

  void load() async {
    emit(HerosState.loadLoading());
    //search with A to start
    final result = await _repository.fetchAllByFilter("a");
    result.fold(
      (message) => emit(HerosState.loadFailure(message)),
      (data) => emit(HerosState.loadLoadded(data)),
    );
  }

  void loadByFilter(String text) async {
    emit(HerosState.loadLoading());
    final result = await _repository.fetchAllByFilter(text);
    result.fold(
      (message) => emit(HerosState.loadFailure(message)),
      (data) => emit(HerosState.loadLoadded(data)),
    );
  }
}
