import 'package:flutter/material.dart';
import 'package:superherapp/app/shared/models/hero_model.dart';
import 'package:superherapp/app/shared/style/app_dimensions.dart';

import 'item_widget.dart';

class AppearenceWidget extends StatelessWidget {
  const AppearenceWidget({
    Key key,
    @required this.data,
  }) : super(key: key);

  final HeroModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: AppDimensions.marginScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Appearence",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ItemWidget(
              title: data?.appearance?.gender,
              content: "gender",
            ),
            ItemWidget(
              title: data?.appearance?.eyeColor,
              content: "Eye Color",
            ),
            ItemWidget(
              title: data?.appearance?.hairColor,
              content: "Hair Color",
            ),
            ItemWidget(
              title: data?.appearance?.race,
              content: "Race",
            ),
            ItemWidget(
              title: data?.appearance?.height?.first,
              content: "Height",
            ),
            ItemWidget(
              title: data?.appearance?.weight?.first,
              content: "First",
            ),
          ],
        ),
      ),
    );
  }
}
