import 'dart:convert';

import 'menu_item.dart';

class OrderItem {
  final int id;
  final MenuItem item;
  
  OrderItem({
    this.id,
    this.item,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'item': item?.toMap(),
    };
  }

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return OrderItem(
      id: map['id'] ?? 0,
      item: MenuItem.fromMap(map['item']) ?? MenuItem(),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderItem.fromJson(String source) => OrderItem.fromMap(json.decode(source));
}
