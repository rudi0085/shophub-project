import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/pages/widget/livelist_widget.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listAssets = [
      KLiveList.profileImage1,
      KLiveList.profileImage2,
      KLiveList.profileImage3,
      KLiveList.profileImage4,
      KLiveList.profileImage5,
    ];
    List<String> listProfile = [
      KLiveName.profileName1,
      KLiveName.profileName2,
      KLiveName.profileName3,
      KLiveName.profileName4,
      KLiveName.profileName5,
    ];

    double widthScreen = MediaQuery.of(context).size.width;
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
                  'Message',
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
                      icon: Icon(Iconsax.search_normal_1_copy, size: 20),
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
            // Text LiveNOw and SeeALL
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Live Now',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    height: 1.5,
                    letterSpacing: 0,
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
                      height: 1.5,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),
            // Live List
            Row(
              children: [
                ...List.generate(listAssets.length, (index) {
                  return LivelistWidget(
                    assets: listAssets.elementAt(index),
                    profileName: listProfile.elementAt(index),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
