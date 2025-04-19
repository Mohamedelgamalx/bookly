class ProtocolProfileBehavior {
  ProtocolProfileBehavior({
      this.disableBodyPruning,});

  ProtocolProfileBehavior.fromJson(dynamic json) {
    disableBodyPruning = json['disableBodyPruning'];
  }
  bool? disableBodyPruning;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['disableBodyPruning'] = disableBodyPruning;
    return map;
  }

}