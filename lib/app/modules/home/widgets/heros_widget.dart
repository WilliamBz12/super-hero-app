import 'package:flutter/material.dart';

import '../../../shared/models/hero_model.dart';
import '../../../shared/style/app_dimensions.dart';
import 'hero_widget.dart';

class HerosWidget extends StatelessWidget {
  final List<HeroModel> data;
  HerosWidget({@required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppDimensions.marginScreen,
      itemBuilder: (context, index) => HeroWidget(
        hero: data[index],
      ),
      itemCount: data.length,
      separatorBuilder: (context, index) => SizedBox(height: 20),
    );
  }
}
