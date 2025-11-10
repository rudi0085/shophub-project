import 'package:flutter/material.dart';
import 'package:shophub_project/data/constrant.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerSearch = TextEditingController();
    return TextField(
      controller: controllerSearch,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          color: KColors.neutral300,
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(Icons.search, size: 24, color: KColors.neutral300),
        contentPadding: EdgeInsets.symmetric(vertical: 12),
        border: InputBorder.none,

        isDense: true,
      ),
    );
  }
}
