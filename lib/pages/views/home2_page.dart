import 'package:flutter/material.dart';
import 'package:shophub_project/data/constrant.dart';

class Home2Page extends StatelessWidget {
  const Home2Page({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    TextEditingController controllerSearch = TextEditingController();

    return Scaffold(
      backgroundColor: KColors.primary500,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: controllerSearch,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: KColors.neutral300,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                          color: KColors.neutral300,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        border: InputBorder.none,

                        isDense: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: KColors.neutral300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Card
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: heightScreen * 0.17,
                            child: Image.asset(
                              'assets/images/bgcard2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Image.asset(
                              'assets/images/orn_card2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Image.asset(
                              'assets/images/disc2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 11, left: 20),
                            child: SizedBox(
                              width: widthScreen * 0.59,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discover a world of endless shopping possibilities',
                                    style: TextStyle(
                                      color: KColors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      height: 1.5,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Don't miss out on our exclusive Special Sale, offering incredible discounts of up to 50%!",
                                    style: TextStyle(
                                      color: KColors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      height: 1.5,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  FilledButton(
                                    onPressed: () {},
                                    style: FilledButton.styleFrom(
                                      backgroundColor: KColors.neutral50,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),

                                    child: Text(
                                      'Get Started',
                                      style: TextStyle(
                                        color: KColors.primary500,
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: heightScreen * 0.5036,
                decoration: BoxDecoration(
                  color: KColors.neutral50,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Category
                        Text(
                          'Category',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        // Categories
                        Row(
                          children: [
                            // Every Category
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        // Sneakers
                                        Image.asset(
                                          'assets/images/sneakers.png',
                                        ),
                                        Text(
                                          'Sneakers',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Apparel
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        // 1
                                        Image.asset(
                                          'assets/images/apparel.png',
                                        ),
                                        Text(
                                          'Apparel',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Watch
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        // 1
                                        Image.asset('assets/images/watch.png'),
                                        Text(
                                          'Watch',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // JoyStick
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        // 1
                                        Image.asset(
                                          'assets/images/joystick.png',
                                        ),
                                        Text(
                                          'Joy Stick',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // More
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        // 1
                                        Image.asset('assets/images/more.png'),
                                        Text(
                                          'More',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 2
                          ],
                        ),
                        SizedBox(height: 28),
                        // Popular Product\
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Product',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  color: KColors.primary500,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17),
                        SizedBox(
                          child: Column(
                            children: [
                              // Row1 Headphone and Bluetooth Blue
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Headphone
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/headset.png',
                                        ),
                                        Text(
                                          'Headphone Nirkabel Extra Full Bass',
                                        ),
                                        SizedBox(height: 4),
                                        // Ulasan
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: KColors.yellow,
                                            ),

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
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  // Bluetooth Headphone
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/bHeadphone.png',
                                        ),
                                        Text(
                                          'Bluetooth Headphone Wireless Earbud',
                                        ),
                                        SizedBox(height: 4),
                                        // Ulasan
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: KColors.yellow,
                                            ),

                                            SizedBox(width: 4),
                                            Text(
                                              '5.0',
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
                                        Row(
                                          children: [
                                            Text(
                                              '\$99',
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
                                              '\$179',
                                              style: TextStyle(
                                                color: KColors.neutral600,
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                height: 1.5,
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // HeadphoneWhite Bluethoot Black
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //headphone White
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/headphoneWhite.png',
                                        ),
                                        Text(
                                          'Headphone Nirkabel Extra Full Bass White',
                                        ),
                                        SizedBox(height: 4),
                                        // Ulasan
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: KColors.yellow,
                                            ),

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
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  // Bluetooth Headphone Black
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/bluetoothblack.png',
                                        ),
                                        Text(
                                          'Bluetooth Headphone Wireless Earbud',
                                        ),
                                        SizedBox(height: 4),
                                        // Ulasan
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: KColors.yellow,
                                            ),

                                            SizedBox(width: 4),
                                            Text(
                                              '5.0',
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
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
