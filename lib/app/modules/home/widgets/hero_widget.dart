import 'package:flutter/material.dart';
import '../models/hero_model.dart';

class HeroWidget extends StatelessWidget {
  final HeroModel hero;
  HeroWidget({@required this.hero});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(
            context,
            "/hero-details",
            arguments: hero,
          );
        },
        leading: Image.network(
          hero.image.url,
          height: 100,
        ),
        title: Text(hero.name),
      ),
    );
  }
}
