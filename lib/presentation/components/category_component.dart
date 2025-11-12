import 'package:flutter/material.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({super.key, required this.asset, required this.name});

  final String asset;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Image.asset(asset),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
