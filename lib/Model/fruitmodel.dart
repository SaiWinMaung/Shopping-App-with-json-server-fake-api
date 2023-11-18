// To parse this JSON data, do
//
//     final fruit = fruitFromJson(jsonString);

import 'dart:convert';

List<Fruit> fruitFromJson(String str) =>
    List<Fruit>.from(json.decode(str).map((x) => Fruit.fromJson(x)));

String fruitToJson(List<Fruit> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Fruit {
  int id;
  String name;
  String description;
  String price;
  String imageUrl;

  Fruit({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Fruit.fromJson(Map<String, dynamic> json) => Fruit(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "imageUrl": imageUrl,
      };
}
