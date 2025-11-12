import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

bool isSwitched = false;

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        titleSpacing: 16,
        actionsPadding: EdgeInsets.only(right: 16),
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            height: 1.5,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [Icon(Iconsax.edit_2)],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
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
                GestureDetector(
                  child: Image.asset('assets/images/icons/arrow-right.png'),
                ),
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
                            size: 20,
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
                            Iconsax.truck_fast,
                            color: KColors.primary500,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Product Packaged',
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
                            Iconsax.receive_square,
                            color: KColors.primary500,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Product Received',
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
                            Iconsax.box_tick,
                            size: 24,
                            color: KColors.primary500,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Product Completed',
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

            // End of My Orders, Shipping Address, Payment Method, Settings
            SizedBox(height: 24),
            // Account Settings, Help & Support, Logout
            Text(
              'Account',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),

            // account Menu - Edit Profile - My Voucher - Followed Shop - Shophub Pay
            // Edit Profile
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.user, color: KColors.neutral300),
                      SizedBox(width: 16),
                      Text('Edit Profile'),
                    ],
                  ),

                  Image.asset('assets/images/icons/arrow-right.png'),
                ],
              ),
            ),
            // My Voucher
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.ticket, color: KColors.neutral300),
                      SizedBox(width: 16),
                      Text('My Voucher'),
                    ],
                  ),

                  Image.asset('assets/images/icons/arrow-right.png'),
                ],
              ),
            ),
            // Followed Shop
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.shop, color: KColors.neutral300),
                      SizedBox(width: 16),
                      Text('Followed Shop'),
                    ],
                  ),

                  Image.asset('assets/images/icons/arrow-right.png'),
                ],
              ),
            ),
            // ShopHub Pay
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.card, color: KColors.neutral300),
                      SizedBox(width: 16),
                      Text('ShopHub Pay'),
                    ],
                  ),

                  Image.asset('assets/images/icons/arrow-right.png'),
                ],
              ),
            ),

            // ---------------------------
            SizedBox(height: 24),
            // Content and Display
            Text(
              'Content & Display',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),

            // Dark Mode
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.sun_1, color: KColors.neutral300),
                      SizedBox(width: 16),
                      Text('Dark Mode'),
                    ],
                  ),
                  Switch.adaptive(
                    value: isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            // Notification
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.notification_bing,
                        color: KColors.neutral300,
                      ),
                      SizedBox(width: 16),
                      Text('Notifications'),
                    ],
                  ),
                  Image.asset('assets/images/icons/arrow-right.png'),
                ],
              ),
            ),

            // Language
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.language_square, color: KColors.neutral300),
                      SizedBox(width: 16),
                      Text('Language'),
                    ],
                  ),
                  Image.asset('assets/images/icons/arrow-right.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
