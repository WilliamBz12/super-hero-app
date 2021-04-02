import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:superherapp/app/modules/home/cubits/heros/heros_cubit.dart';
import 'package:superherapp/app/modules/home/repositories/hero_repository.dart';
import 'package:superherapp/app/shared/models/hero_model.dart';

class MockHerosCubit extends MockBloc implements HerosCubit {}

class MockHeroRepository extends Mock implements HeroRepository {}

final exception = Exception('ops');

final mockHeros = [
  HeroModel(name: "Batman"),
];

void main() {
  HeroRepository repository;

  setUp(() {
    repository = MockHeroRepository();
  });
  group('Load by Filter', () {
    blocTest<HerosCubit, HerosState>(
      'should emits states => [Loading, Loaded] when successful',
      build: () {
        when(repository.fetchAllByFilter("Batman")).thenAnswer(
          (_) async => Right(mockHeros),
        );
        return HerosCubit(repository);
      },
      act: (cubit) => cubit.loadByFilter("Batman"),
      expect: <HerosState>[
        HerosState.loadLoading(),
        HerosState.loadLoadded(mockHeros),
      ],
    );

    blocTest<HerosCubit, HerosState>(
      'should emits [] when nothing is called',
      build: () => HerosCubit(repository),
      expect: [],
    );

    blocTest<HerosCubit, HerosState>(
      'should captures uncaught exceptions',
      build: () {
        when(repository.fetchAllByFilter("")).thenThrow(exception);
        return HerosCubit(repository);
      },
      act: (cubit) => cubit.addError(exception),
      errors: <Matcher>[
        equals(exception),
      ],
    );

    blocTest<HerosCubit, HerosState>(
      'should emits states => [Loading, Error] when unsuccessful',
      build: () {
        when(repository.fetchAllByFilter("Superman")).thenAnswer(
          (_) async => Left("Not Found"),
        );
        return HerosCubit(repository);
      },
      act: (cubit) => cubit.loadByFilter("Superman"),
      expect: <HerosState>[
        HerosState.loadLoading(),
        HerosState.loadFailure("Not Found"),
      ],
    );
  });
}
