import 'package:flutter/material.dart';
import 'package:superherapp/app/modules/home/models/hero_model.dart';
import 'package:superherapp/app/shared/style/app_dimensions.dart';

import 'item_widget.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({
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
              "Work",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ItemWidget(
              title: data?.work?.base,
              content: "Base",
            ),
            ItemWidget(
              title: data?.work?.occupation,
              content: "Occupation",
            ),
          ],
        ),
      ),
    );
  }
}
