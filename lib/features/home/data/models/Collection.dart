import 'Info.dart';
import 'Item.dart';

class Collection {
  Collection({
      this.info, 
      this.item,});

  Collection.fromJson(dynamic json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['item'] != null) {
      item = [];
      json['item'].forEach((v) {
        item?.add(Item.fromJson(v));
      });
    }
  }
  Info? info;
  List<Item>? item;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (info != null) {
      map['info'] = info?.toJson();
    }
    if (item != null) {
      map['item'] = item?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}