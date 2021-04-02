import 'package:flutter/material.dart';
import 'package:superherapp/app/shared/models/hero_model.dart';
import 'package:superherapp/app/shared/style/app_dimensions.dart';

import 'item_widget.dart';

class BiographyWidget extends StatelessWidget {
  const BiographyWidget({
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
              "Biography",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ItemWidget(
              title: data?.biography?.fullName,
              content: "FullName",
            ),
            ItemWidget(
              title: data?.biography?.alignment,
              content: "Alignment",
            ),
            ItemWidget(
              title: data?.biography?.alterEgos,
              content: "Alter Egos",
            ),
            ItemWidget(
              title: data?.biography?.firstAppearance,
              content: "First appearance",
            ),
            ItemWidget(
              title: data?.biography?.placeOfBirth,
              content: "Place of birth",
            ),
            ItemWidget(
              title: data?.biography?.publisher,
              content: "Publisher",
            ),
          ],
        ),
      ),
    );
  }
}
