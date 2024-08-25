import 'package:coffee_shop_ui/Model/coffee.dart';
import 'package:coffee_shop_ui/utils/pallete.dart';
import 'package:flutter/material.dart';

class QuantityButtons extends StatelessWidget {
  final Coffee coffee;
  final IconData icon;
  const QuantityButtons({
    super.key,
    required this.coffee,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: coffee.color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Icon(
          icon,
          color: Pallete.white,
          size: 30,
        ),
      ),
    );
  }
}
