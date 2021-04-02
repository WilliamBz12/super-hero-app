import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../repositories/hero_repository.dart';
import '../../models/hero_model.dart';

part 'heros_state.dart';
part 'heros_cubit.freezed.dart';

class HerosCubit extends Cubit<HerosState> {
  final HeroRepository _repository;
  HerosCubit(this._repository) : super(HerosState.loadInitial());

  void load() async {
    emit(HerosState.loadLoading());
    final result = await _repository.fetchAll();
    result.fold(
      (message) => emit(HerosState.loadFailure(message)),
      (data) => emit(HerosState.loadLoadded(data)),
    );
  }
}
