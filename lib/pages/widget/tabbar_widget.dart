import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key, required this.name, required this.asset});

  final String name;
  final String asset;
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: 24),
        Container(
          margin: EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(asset, fit: BoxFit.cover),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  SizedBox(height: 4),
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
                      Container(
                        height: 15,
                        width: 1,
                        color: KColors.neutral300,
                      ),
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
                  SizedBox(
                    width: widthScreen * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Icon(Iconsax.heart, color: KColors.red),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
