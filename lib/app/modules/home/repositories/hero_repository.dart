import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/hero_model.dart';

class HeroRepository {
  final Dio client;

  HeroRepository({@required this.client});

  Future<Either<String, List<HeroModel>>> fetchAll() async {
    try {
      final result = await client.get("/search/bat");

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
