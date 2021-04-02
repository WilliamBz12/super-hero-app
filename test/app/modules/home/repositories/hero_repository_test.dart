import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:superherapp/app/modules/home/repositories/hero_repository.dart';
import 'package:superherapp/app/shared/models/hero_model.dart';

class MockHeroRepository extends Mock implements HeroRepository {}

final mockHeros = [HeroModel(name: "Batman")];

final errorNotFound = "not found";

void main() {
  HeroRepository repository;

  setUp(() {
    repository = MockHeroRepository();
  });
  group('Hero repository', () {
    test(
      "should return right when try fetchAllByFilter is successful",
      () async {
        when(repository.fetchAllByFilter("Batman")).thenAnswer(
          (_) async => Right(mockHeros),
        );
        final result = await repository.fetchAllByFilter("Batman");
        expect(result, equals(Right(mockHeros)));
      },
    );

    test(
      "should return left when try fetchAllByFilter is not found",
      () async {
        when(repository.fetchAllByFilter("")).thenAnswer(
          (_) async => Left(errorNotFound),
        );
        final result = await repository.fetchAllByFilter("");
        expect(result, equals(Left(errorNotFound)));
      },
    );
  });
}
