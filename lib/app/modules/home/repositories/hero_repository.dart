import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../shared/models/hero_model.dart';

class HeroRepository {
  final Dio client;

  HeroRepository({@required this.client});

  Future<Either<String, List<HeroModel>>> fetchAllByFilter(String text) async {
    try {
      final result = await client.get("/search/$text");

      if (result.data["response"] == "error") {
        return Left(result.data["error"]);
      }
      var heros = <HeroModel>[];

      for (var item in result.data["results"]) {
        final hero = HeroModel.fromJson(item);
        heros.add(hero);
      }
      return Right(heros);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
