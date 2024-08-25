// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop_ui/Model/coffee.dart';
import 'package:coffee_shop_ui/screens/coffee_detail_screen.dart';
import 'package:coffee_shop_ui/utils/pallete.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final int index;
  const ItemCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final List<Coffee> coffeeList = Coffee.coffeeItemList;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoffeeDetailScreen(
              coffee: coffeeList[index],
            ),
          ),
        );
      },
      child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            color: coffeeList[index].color,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            children: [
              Text(
                coffeeList[index].name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Pallete.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Hero(
                  tag: coffeeList[index].image,
                  child: Image.asset(
                    coffeeList[index].image,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
