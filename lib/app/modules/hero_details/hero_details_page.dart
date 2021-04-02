import 'package:flutter/material.dart';
import '../../shared/models/hero_model.dart';
import '../../shared/style/app_dimensions.dart';
import 'widgets/appearence_widget.dart';
import 'widgets/biography_widget.dart';
import 'widgets/connections_widget.dart';
import 'widgets/head_widget.dart';
import 'widgets/power_stats_widget.dart';
import 'widgets/work_widget.dart';

class HeroDetailsPage extends StatelessWidget {
  final HeroModel data;
  HeroDetailsPage({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
      ),
      body: SingleChildScrollView(
        padding: AppDimensions.marginScreen,
        child: Column(
          children: [
            HeadWidget(
              name: data.name,
              urlImage: data.image.url,
            ),
            PowerStatsWidet(
              powerstats: data.powerstats,
            ),
            BiographyWidget(
              data: data,
            ),
            AppearenceWidget(
              data: data,
            ),
            WorkWidget(
              data: data,
            ),
            ConnectionsWidget(
              data: data,
            ),
          ],
        ),
      ),
    );
  }
}
