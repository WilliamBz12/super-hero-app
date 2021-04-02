import 'powerstats_model.dart';

import 'appearance_model.dart';
import 'biography_model.dart';
import 'connections_model.dart';
import 'image_model.dart';
import 'work_model.dart';

class HeroModel {
  String response;
  String id;
  String name;
  PowerstatsModel powerstats;
  BiographyModel biography;
  AppearanceModel appearance;
  WorkModel work;
  ConnectionsModel connections;
  ImageModel image;

  HeroModel({
    this.response,
    this.id,
    this.name,
    this.powerstats,
    this.biography,
    this.appearance,
    this.work,
    this.connections,
    this.image,
  });

  HeroModel.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    id = json['id'];
    name = json['name'];
    powerstats = json['powerstats'] != null
        ? new PowerstatsModel.fromJson(json['powerstats'])
        : null;
    biography = json['biography'] != null
        ? new BiographyModel.fromJson(json['biography'])
        : null;
    appearance = json['appearance'] != null
        ? new AppearanceModel.fromJson(json['appearance'])
        : null;
    work = json['work'] != null ? new WorkModel.fromJson(json['work']) : null;
    connections = json['connections'] != null
        ? new ConnectionsModel.fromJson(json['connections'])
        : null;
    image =
        json['image'] != null ? new ImageModel.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.powerstats != null) {
      data['powerstats'] = this.powerstats.toJson();
    }
    if (this.biography != null) {
      data['biography'] = this.biography.toJson();
    }
    if (this.appearance != null) {
      data['appearance'] = this.appearance.toJson();
    }
    if (this.work != null) {
      data['work'] = this.work.toJson();
    }
    if (this.connections != null) {
      data['connections'] = this.connections.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    return data;
  }
}
