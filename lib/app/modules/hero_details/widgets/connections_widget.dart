import 'package:flutter/material.dart';
import '../../../shared/models/hero_model.dart';
import '../../../shared/style/app_dimensions.dart';

import 'item_widget.dart';

class ConnectionsWidget extends StatelessWidget {
  const ConnectionsWidget({
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
              "Connections",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ItemWidget(
              title: data?.connections?.groupAffiliation,
              content: "Group affiliation",
            ),
            ItemWidget(
              title: data?.connections?.relatives,
              content: "Relatives",
            ),
          ],
        ),
      ),
    );
  }
}
