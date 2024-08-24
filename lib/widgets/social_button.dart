import 'package:coffee_shop_ui/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color buttonColor;
  const SocialButton({
    super.key,
    required this.imagePath,
    required this.title,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(
          imagePath,
          height: 30,
        ),
        label: Text(
          title,
          style: const TextStyle(
            color: Pallete.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            minimumSize: const Size(400, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
