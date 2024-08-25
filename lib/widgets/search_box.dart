import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});
  final _border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromRGBO(201, 201, 201, 0.6),
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        prefixIcon: const Icon(
          Icons.search,
          size: 40,
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        enabledBorder: _border,
        focusedBorder: _border,
        fillColor: const Color.fromRGBO(201, 201, 201, 0.6),
        filled: true,
      ),
    );
  }
}
