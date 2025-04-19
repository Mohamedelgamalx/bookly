import 'ProtocolProfileBehavior.dart';
import 'Request.dart';

class Item {
  Item({
      this.name, 
      this.id, 
      this.protocolProfileBehavior, 
      this.request, 
      this.response, 
      this.uid,});

  Item.fromJson(dynamic json) {
    name = json['name'];
    id = json['id'];
    protocolProfileBehavior = json['protocolProfileBehavior'] != null ? ProtocolProfileBehavior.fromJson(json['protocolProfileBehavior']) : null;
    request = json['request'] != null ? Request.fromJson(json['request']) : null;
    if (json['response'] != null) {
      response = [];
      json['response'].forEach((v) {
        response?.add(Dynamic.fromJson(v));
      });
    }
    uid = json['uid'];
  }
  String? name;
  String? id;
  ProtocolProfileBehavior? protocolProfileBehavior;
  Request? request;
  List<dynamic>? response;
  String? uid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['id'] = id;
    if (protocolProfileBehavior != null) {
      map['protocolProfileBehavior'] = protocolProfileBehavior?.toJson();
    }
    if (request != null) {
      map['request'] = request?.toJson();
    }
    if (response != null) {
      map['response'] = response?.map((v) => v.toJson()).toList();
    }
    map['uid'] = uid;
    return map;
  }

}