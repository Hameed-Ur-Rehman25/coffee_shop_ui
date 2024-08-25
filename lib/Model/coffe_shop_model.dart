import 'package:flutter/material.dart';

class CoffeeShopModel {
  final String name;
  final double price;
  final String imagePath;
  final double stars;
  final Color bgColor;

  CoffeeShopModel({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.stars,
    required this.bgColor,
  });

  static List<CoffeeShopModel> coffeeItemList = [];

  // static void addCoffee() {
  //   coffeeItemList.add(value);
  // }
}
