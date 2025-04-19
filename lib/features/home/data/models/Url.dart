import 'Query.dart';

class Url {
  Url({
      this.raw, 
      this.protocol, 
      this.host, 
      this.path, 
      this.query,});

  Url.fromJson(dynamic json) {
    raw = json['raw'];
    protocol = json['protocol'];
    host = json['host'] != null ? json['host'].cast<String>() : [];
    path = json['path'] != null ? json['path'].cast<String>() : [];
    if (json['query'] != null) {
      query = [];
      json['query'].forEach((v) {
        query?.add(Query.fromJson(v));
      });
    }
  }
  String? raw;
  String? protocol;
  List<String>? host;
  List<String>? path;
  List<Query>? query;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['raw'] = raw;
    map['protocol'] = protocol;
    map['host'] = host;
    map['path'] = path;
    if (query != null) {
      map['query'] = query?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}