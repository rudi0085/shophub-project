import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/widget/tabbar_widget.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({super.key});

  @override
  Widget build(BuildContext context) {
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: false,
          titleSpacing: 16,
          actionsPadding: EdgeInsets.only(right: 16),

          title: Text(
            'Whistlist',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              height: 1.5,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [Icon(Iconsax.search_normal_1_copy)],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: KColors.primary500,
                labelColor: KColors.neutral900,
                unselectedLabelColor: KColors.neutral500,
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  height: 1.5,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w500,
                ),
                tabs: [
                  Tab(text: 'All Items (80)'),
                  Tab(text: 'Board'),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TabBarView(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allProductNames.length,
                itemBuilder: (context, index) {
                  return TabbarWidget(
                    name: allProductNames.elementAt(index),
                    asset: allProductImages.elementAt(index),
                  );
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allProductNames.length,
                itemBuilder: (context, index) {
                  return TabbarWidget(
                    name: allProductNames.elementAt(index),
                    asset: allProductImages.elementAt(index),
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
