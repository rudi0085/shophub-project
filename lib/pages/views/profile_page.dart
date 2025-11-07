import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Account',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    height: 1.5,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: heightScreen * 0.04,
                  width: heightScreen * 0.04,
                  decoration: BoxDecoration(
                    color: KColors.neutral50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Iconsax.notification, size: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture, Name, Location
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jack Smith',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        height: 1.5,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Melbourney City Park',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            height: 1.5,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Iconsax.edit_2,
                          size: 16,
                          color: KColors.primary500,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // My Orders, Shipping Address, Payment Method, Settings
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Iconsax.shopping_cart, color: KColors.neutral300),
                    SizedBox(width: 16),
                    Text(
                      'My Orders',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        height: 1.5,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right_rounded, size: 40),
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: KColors.neutral50,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Center(
                          child: Icon(
                            Iconsax.box_time,
                            color: KColors.primary500,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Waiting for Payment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            height: 1.5,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: KColors.neutral50,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Center(
                          child: Icon(
                            Iconsax.box_time,
                            color: KColors.primary500,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Waiting for Payment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            height: 1.5,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: KColors.neutral50,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Center(
                          child: Icon(
                            Iconsax.box_time,
                            color: KColors.primary500,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Waiting for Payment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            height: 1.5,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: KColors.neutral50,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Center(
                          child: Icon(
                            Iconsax.box_time,
                            color: KColors.primary500,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Waiting for Payment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            height: 1.5,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
