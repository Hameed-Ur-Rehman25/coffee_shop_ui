import 'package:coffee_shop_ui/Model/coffee.dart';
import 'package:coffee_shop_ui/utils/pallete.dart';
import 'package:coffee_shop_ui/widgets/item_card.dart';
import 'package:coffee_shop_ui/widgets/search_box.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/shope_logo.png',
                  height: 80,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'House Signature',
                style: TextStyle(
                  color: Pallete.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SearchBox(),
              const SizedBox(height: 25),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: Coffee.coffeeItemList.length,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      index: index,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
