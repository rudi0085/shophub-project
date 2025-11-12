import 'package:flutter/material.dart';

import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/components/category_component.dart';

import 'package:shophub_project/presentation/widget/product_widget.dart';
import 'package:shophub_project/presentation/widget/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controllerSearch = TextEditingController();
  List<String> allProductNames = [
    KProductName.headset,
    KProductName.headphoneWhite,
    KProductName.bluetoothHeadphoneBlack,
    KProductName.bluetoothHeadphone,
  ];

  List<String> allProductImages = [
    KProductImage.headset,
    KProductImage.headphoneWhite,
    KProductImage.bluetoothHeadphoneBlack,
    KProductImage.bluetoothHeadphone,
  ];

  List<String> categoryImage = [
    KCategoryImage.sneaker,
    KCategoryImage.apparel,
    KCategoryImage.watch,
    KCategoryImage.joystick,
    KCategoryImage.more,
  ];
  List<String> categorytitle = [
    KCategoryTitle.sneakers,
    KCategoryTitle.apparel,
    KCategoryTitle.watch,
    KCategoryTitle.joystick,
    KCategoryTitle.more,
  ];

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KColors.neutral50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SearchWidget(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                                // Slide dari bawah
                                const begin = Offset(0.0, 1.0);
                                const end = Offset.zero;
                                const curve = Curves.easeInOut;

                                var tween = Tween(
                                  begin: begin,
                                  end: end,
                                ).chain(CurveTween(curve: curve));

                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              },
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IgnorePointer(
                        child: TextFormField(
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    width: double.infinity,
                    height: heightScreen * 0.17,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: heightScreen * 0.17,
                          child: Image.asset(
                            'assets/images/bg_card.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Image.asset(
                            'assets/images/orn_card.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Image.asset('assets/images/person_orn.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: widthScreen * 0.6,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Get Your Special sale up to 50%',
                                  style: TextStyle(
                                    color: KColors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    "Don't miss out on our exclusive Special Sale, offering incredible discounts of up to 50%!",
                                    style: TextStyle(
                                      color: KColors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                // SHopNow Button
                                FilledButton(
                                  onPressed: () {},
                                  style: FilledButton.styleFrom(
                                    backgroundColor: KColors.neutral50,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),

                                  child: Text(
                                    'Shop Now',
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
              SizedBox(height: 20),
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
              SizedBox(
                height: 70, // Berikan tinggi untuk horizontal ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Horizontal scroll
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: CategoryComponent(
                        asset: categoryImage.elementAt(index),
                        name: categorytitle.elementAt(index),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              // Popular Product
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
              // Popular Product - ListView.builder
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: (allProductNames.length / 2).ceil(),
                itemBuilder: (context, index) {
                  int firstIndex = index * 2;
                  int secondIndex = firstIndex + 1;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ProductWidget(
                            productImage: allProductImages[firstIndex],
                            productName: allProductNames[firstIndex],
                          ),
                        ),
                        if (secondIndex < allProductNames.length) ...[
                          SizedBox(width: 16),
                          Expanded(
                            child: ProductWidget(
                              productImage: allProductImages[secondIndex],
                              productName: allProductNames[secondIndex],
                            ),
                          ),
                        ] else
                          Expanded(child: SizedBox()),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
