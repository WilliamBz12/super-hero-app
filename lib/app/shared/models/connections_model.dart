class ConnectionsModel {
  String groupAffiliation;
  String relatives;

  ConnectionsModel({
    this.groupAffiliation,
    this.relatives,
  });

  ConnectionsModel.fromJson(Map<String, dynamic> json) {
    groupAffiliation = json['group-affiliation'];
    relatives = json['relatives'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['group-affiliation'] = this.groupAffiliation;
    data['relatives'] = this.relatives;
    return data;
  }
}
