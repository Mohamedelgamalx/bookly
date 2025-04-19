class Info {
  Info({
      this.postmanId, 
      this.name, 
      this.schema, 
      this.updatedAt, 
      this.createdAt, 
      this.lastUpdatedBy, 
      this.uid,});

  Info.fromJson(dynamic json) {
    postmanId = json['_postman_id'];
    name = json['name'];
    schema = json['schema'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    lastUpdatedBy = json['lastUpdatedBy'];
    uid = json['uid'];
  }
  String? postmanId;
  String? name;
  String? schema;
  String? updatedAt;
  String? createdAt;
  String? lastUpdatedBy;
  String? uid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_postman_id'] = postmanId;
    map['name'] = name;
    map['schema'] = schema;
    map['updatedAt'] = updatedAt;
    map['createdAt'] = createdAt;
    map['lastUpdatedBy'] = lastUpdatedBy;
    map['uid'] = uid;
    return map;
  }

}