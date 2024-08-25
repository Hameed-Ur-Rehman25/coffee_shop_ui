import 'package:coffee_shop_ui/Model/coffee.dart';
import 'package:coffee_shop_ui/utils/pallete.dart';
import 'package:coffee_shop_ui/widgets/quantity_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class CoffeeDetailScreen extends StatefulWidget {
  final Coffee coffee;
  const CoffeeDetailScreen({
    super.key,
    required this.coffee,
  });

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  bool isFavorite = false;
  double _rating = 3.0; // Default rating value
  bool switchValue = false;
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    // Initialize _rating with the coffee's rating if available
    _rating = widget.coffee.star;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: widget.coffee.color,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/menu.png',
                    height: 50,
                    width: 40,
                  ),
                  const Icon(
                    Icons.shopping_cart,
                    size: 35,
                    color: Pallete.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: size.height * 0.57,
                        decoration: const BoxDecoration(
                          color: Pallete.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 50,
                    left: 25,
                    child: Hero(
                      tag: widget.coffee.image,
                      child: Image.asset(
                        widget.coffee.image,
                        height: 400,
                        width: 400,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: size.height * 0.55,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      size: 40,
                                      color: widget.coffee.color,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isFavorite = !isFavorite;
                                      });
                                    },
                                    icon: Icon(
                                      isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: widget.coffee.color,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              Text(
                                widget.coffee.name,
                                style: const TextStyle(
                                  height: 0.8,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              RatingStars(
                                value: _rating,
                                onValueChanged: (value) {
                                  setState(() {
                                    _rating = value;
                                  });
                                },
                                starCount: 5,
                                starColor: Colors.amber,
                                starSize: 30.0,
                                valueLabelVisibility: true,
                                animationDuration:
                                    const Duration(milliseconds: 1200),
                                starSpacing: 10,
                              ),
                              SizedBox(
                                height: size.height * 0.06,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$${widget.coffee.price}',
                                    style: const TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          if (quantity > 1) {
                                            setState(() {
                                              quantity -= 1;
                                            });
                                          }
                                        },
                                        child: QuantityButtons(
                                          coffee: widget.coffee,
                                          icon: Icons.remove,
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      Text(
                                        '$quantity',
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity += 1;
                                          });
                                        },
                                        child: QuantityButtons(
                                          coffee: widget.coffee,
                                          icon: Icons.add,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: size.height * 0.04),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'L',
                                    style: TextStyle(
                                      color: Pallete.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  CupertinoSwitch(
                                      activeColor: widget.coffee.color,
                                      value: switchValue,
                                      onChanged: (value) {
                                        setState(() {
                                          switchValue = value;
                                        });
                                      }),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'S',
                                    style: TextStyle(
                                      color: Pallete.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: size.height * 0.04),
                              Container(
                                height: 70,
                                width: size.width * 0.6,
                                decoration: BoxDecoration(
                                  color: widget.coffee.color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Order Now",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
