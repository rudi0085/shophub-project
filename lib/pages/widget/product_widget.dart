import 'package:flutter/material.dart';
import 'package:shophub_project/data/constrant.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.productImage,
    required this.productName,
  });
  final String productImage;
  final String productName;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(productImage),
          Text(productName),
          SizedBox(height: 4),
          // Ulasan
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 15, color: KColors.yellow),

              SizedBox(width: 4),
              Text(
                '4.5',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 8),
              Container(height: 15, width: 1, color: KColors.neutral300),
              SizedBox(width: 8),
              Text(
                '1540 Sold',
                style: TextStyle(
                  color: KColors.neutral500,
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Text(
                '\$179',
                style: TextStyle(
                  color: KColors.primary500,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 4),
              Text(
                '\$234',
                style: TextStyle(
                  color: KColors.neutral600,
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
