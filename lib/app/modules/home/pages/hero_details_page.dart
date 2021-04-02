import 'package:flutter/material.dart';
import "../../../shared/style/app_dimensions.dart";
import '../models/hero_model.dart';

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
            _buildHead(),
            _buildPowerstats(),
            _buildBiography(),
            _buildApparence(),
            _buildWork(),
            _buildConnections(),
          ],
        ),
      ),
    );
  }

  Widget _buildHead() {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            data?.image?.url,
            width: 100,
            height: 100,
          ),
          Expanded(
            child: Center(
              child: Text(
                data?.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPowerstats() {
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
            _buildItem(
              content: data?.powerstats?.combat,
              title: "Combat",
            ),
            _buildItem(
              content: data?.powerstats?.durability,
              title: "Durability",
            ),
            _buildItem(
              content: data?.powerstats?.intelligence,
              title: "intelligence",
            ),
            _buildItem(
              content: data?.powerstats?.power,
              title: "Power",
            ),
            _buildItem(
              content: data?.powerstats?.speed,
              title: "Speed",
            ),
            _buildItem(
              content: data?.powerstats?.strength,
              title: "Strength",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBiography() {
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
            _buildItem(
              content: data?.biography?.fullName,
              title: "FullName",
            ),
            _buildItem(
              content: data?.biography?.alignment,
              title: "Alignment",
            ),
            _buildItem(
              content: data?.biography?.alterEgos,
              title: "Alter Egos",
            ),
            _buildItem(
              content: data?.biography?.firstAppearance,
              title: "First appearance",
            ),
            _buildItem(
              content: data?.biography?.placeOfBirth,
              title: "Place of birth",
            ),
            _buildItem(
              content: data?.biography?.publisher,
              title: "Publisher",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildApparence() {
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
            _buildItem(
              content: data?.appearance?.gender,
              title: "gender",
            ),
            _buildItem(
              content: data?.appearance?.eyeColor,
              title: "Eye Color",
            ),
            _buildItem(
              content: data?.appearance?.hairColor,
              title: "Hair Color",
            ),
            _buildItem(
              content: data?.appearance?.race,
              title: "Race",
            ),
            _buildItem(
              content: data?.appearance?.height?.first,
              title: "Height",
            ),
            _buildItem(
              content: data?.appearance?.weight?.first,
              title: "First",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWork() {
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
            _buildItem(
              content: data?.work?.base,
              title: "Base",
            ),
            _buildItem(
              content: data?.work?.occupation,
              title: "Occupation",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConnections() {
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
            _buildItem(
              content: data?.connections?.groupAffiliation,
              title: "Group affiliation",
            ),
            _buildItem(
              content: data?.connections?.relatives,
              title: "Relatives",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({String title, String content}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title),
            flex: 1,
          ),
          Expanded(
            child: Text(content ?? "-"),
            flex: 2,
          ),
        ],
      ),
    );
  }

  // ConnectionsModel connections;
}
