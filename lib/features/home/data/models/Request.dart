import 'Url.dart';

class Request {
  Request({
      this.method, 
      this.header, 
      this.url,});

  Request.fromJson(dynamic json) {
    method = json['method'];
    if (json['header'] != null) {
      header = [];
      json['header'].forEach((v) {
        header?.add(Dynamic.fromJson(v));
      });
    }
    url = json['url'] != null ? Url.fromJson(json['url']) : null;
  }
  String? method;
  List<dynamic>? header;
  Url? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['method'] = method;
    if (header != null) {
      map['header'] = header?.map((v) => v.toJson()).toList();
    }
    if (url != null) {
      map['url'] = url?.toJson();
    }
    return map;
  }

}