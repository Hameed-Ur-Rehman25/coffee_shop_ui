// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop_ui/pallete.dart';
import 'package:flutter/material.dart';
// Ensure this imports the correct file

class LoginButton extends StatefulWidget {
  final String title;
  final bool isSelected;
  const LoginButton({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: widget.isSelected
            ? Pallete.buttonColor_1
            : Colors.transparent, // Temporary color for debugging
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Pallete.buttonColor_1, // Temporary color for debugging
        ),
      ),
      child: Center(
        child: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
