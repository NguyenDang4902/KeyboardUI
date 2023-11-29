// To parse this JSON data, do
//
//     final keyboard = keyboardFromJson(jsonString);

import 'dart:convert';

List<Keyboard> keyboardFromJson(String str) => List<Keyboard>.from(json.decode(str).map((x) => Keyboard.fromJson(x)));

String keyboardToJson(List<Keyboard> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Keyboard {
  Keyboard({
    required this.name,
    required this.price,
    required this.switches,
    required this.isWireless,
    required this.size,
    required this.isHotSwap,
    required this.brand,
    required this.quantity,
    required this.remainder,
    required this.image,
    this.id,
  });

  String name;
  String price;
  String switches;
  bool isWireless;
  int size;
  bool isHotSwap;
  String brand;
  int quantity;
  int remainder;
  String image;
  String? id;

  factory Keyboard.fromJson(Map<String, dynamic> json) => Keyboard(
    name: json["name"],
    price: json["price"],
    switches: json["switches"],
    isWireless: json["isWireless"],
    size: json["size"],
    isHotSwap: json["isHotSwap"],
    brand: json["brand"],
    quantity: json["quantity"],
    remainder: json["remainder"],
    image: json["image"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "price": price,
    "switches": switches,
    "isWireless": isWireless,
    "size": size,
    "isHotSwap": isHotSwap,
    "brand": brand,
    "quantity": quantity,
    "remainder": remainder,
    "image": image,
    "id": id,
  };
}
