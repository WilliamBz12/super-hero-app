import 'package:flutter/material.dart';
import '../../../shared/models/powerstats_model.dart';
import '../../../shared/style/app_dimensions.dart';

import 'item_widget.dart';

class PowerStatsWidet extends StatelessWidget {
  final PowerstatsModel powerstats;
  PowerStatsWidet({@required this.powerstats});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: AppDimensions.marginScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Power Stats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ItemWidget(
              content: powerstats?.combat,
              title: "Combat",
            ),
            ItemWidget(
              content: powerstats?.durability,
              title: "Durability",
            ),
            ItemWidget(
              content: powerstats?.intelligence,
              title: "intelligence",
            ),
            ItemWidget(
              content: powerstats?.power,
              title: "Power",
            ),
            ItemWidget(
              content: powerstats?.speed,
              title: "Speed",
            ),
            ItemWidget(
              content: powerstats?.strength,
              title: "Strength",
            ),
          ],
        ),
      ),
    );
  }
}
