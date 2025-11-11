import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';

class SearchHistoryComponent extends StatelessWidget {
  const SearchHistoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(Iconsax.clock_copy, color: KColors.primary500),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Headpphone Wirelless',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                height: 1.5,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Icon(Iconsax.close_square_copy, color: KColors.neutral300),
        ],
      ),
    );
  }
}
