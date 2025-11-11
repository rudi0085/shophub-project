import 'package:flutter/material.dart';
import 'package:shophub_project/data/constrant.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.photoProfile,
    required this.profileName,
  });
  final String photoProfile;
  final String profileName;
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: CircleAvatar(backgroundImage: AssetImage(photoProfile)),
            ),
            SizedBox(
              width: widthScreen * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    profileName,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      height: 1.5,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Of course, we have several options suitable for your needs. One option you may like is the "TrailMaster X" model which is specially designed for light trekking.',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      height: 1.5,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            // Time and Notification
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '08:30',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    height: 1.5,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: KColors.primary500,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: KColors.white,
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        height: 1.5,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(indent: 70),
        SizedBox(height: 16),
      ],
    );
  }
}
