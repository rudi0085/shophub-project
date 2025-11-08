import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/pages/widget/tabbar_widget.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            centerTitle: false,
            titleSpacing: 0,
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
            bottom: const TabBar(
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
          body: TabBarView(children: [TabbarWidget(), TabbarWidget()]),
        ),
      ),
    );
  }
}
