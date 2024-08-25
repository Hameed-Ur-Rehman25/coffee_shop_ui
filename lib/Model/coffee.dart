import 'package:flutter/material.dart';

class Coffee {
  final String name;
  final double price;
  final String image;
  final double star;
  final Color color;

  Coffee({
    required this.name,
    required this.price,
    required this.image,
    required this.star,
    required this.color,
  });

  static List<Coffee> coffeeItemList = [
    Coffee(
      name: "Espresso",
      image: "assets/images/espresso.png",
      color: const Color(0xff65C5B2),
      price: 5,
      star: 4.4,
    ),
    Coffee(
      name: "Cafe Mocha",
      image: "assets/images/Caffe_Mocha.png",
      color: const Color(0xffFFAEF2),
      price: 11,
      star: 4.9,
    ),
    Coffee(
      name: "Caramel Macchiato",
      image: "assets/images/Caramel_Macchiato.png",
      color: const Color(0xffFF9839),
      price: 7,
      star: 4.0,
    ),
    Coffee(
      name: "Turkish Coffee",
      image: "assets/images/turkish_Coffee.png",
      color: const Color(0xffB68456),
      price: 4,
      star: 4.3,
    ),
    Coffee(
      name: "Cappuccino",
      image: "assets/images/cappuccino.png",
      color: const Color(0xffE74343),
      price: 9,
      star: 3.4,
    ),
    Coffee(
      name: "Affogato",
      image: "assets/images/affogato.png",
      color: const Color(0xff56B670),
      price: 12,
      star: 4.0,
    ),
    Coffee(
      name: "Cortado",
      image: "assets/images/cortado.png",
      color: const Color(0xff8D5FDC),
      price: 8,
      star: 5.0,
    ),
    Coffee(
      name: "Cafe Cubano",
      image: "assets/images/cafe_cubano.png",
      color: const Color(0xff5FBFDC),
      price: 15,
      star: 4.5,
    ),
  ];
}
