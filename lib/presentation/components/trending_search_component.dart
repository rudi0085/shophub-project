import 'package:flutter/material.dart';

class TrendingSearchComponent extends StatelessWidget {
  const TrendingSearchComponent({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), // Rounded
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text('$name 🔥'),
    );
  }
}
