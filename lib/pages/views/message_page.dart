import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/pages/widget/livelist_widget.dart';
import 'package:shophub_project/pages/widget/message_widget.dart';

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
      KLiveName.userName1,
      KLiveName.userName2,
      KLiveName.userName3,
      KLiveName.userName4,
      KLiveName.userName5,
      KLiveName.userName6,
      KLiveName.userName7,
      KLiveName.userName8,
      KLiveName.userName9,
      KLiveName.userName10,
    ];
    List<String> listPhotoProfile = [
      KLiveList.profileImage1,
      KLiveList.profileImage2,
      KLiveList.profileImage3,
      KLiveList.profileImage4,
      KLiveList.profileImage5,
      KLiveList.profileImage6,
      KLiveList.profileImage7,
      KLiveList.profileImage8,
      KLiveList.profileImage9,
      KLiveList.profileImage10,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: false,
          titleSpacing: 0,
          title: Text(
            'Message',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              height: 1.5,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [Icon(Iconsax.search_normal_1_copy)],
        ),

        body: SingleChildScrollView(
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
              SizedBox(height: 24),
              // Message Widget
              Column(
                children: [
                  ...List.generate(listProfile.length, (index) {
                    return MessageWidget(
                      profileName: listProfile.elementAt(index),
                      photoProfile: listPhotoProfile.elementAt(index),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
