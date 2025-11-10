import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shophub_project/data/constrant.dart';

class LivelistWidget extends StatelessWidget {
  const LivelistWidget({
    super.key,
    required this.assets,
    required this.profileName,
  });

  final String assets;
  final String profileName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 56,
                height: 56,
                child: CircleAvatar(backgroundImage: AssetImage(assets)),
              ),
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: KColors.red,
                  borderRadius: BorderRadius.circular(360),
                ),
                child: SvgPicture.asset('svg/steam.svg', width: 14, height: 14),
              ),
            ],
          ),
          Text(
            profileName,
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
    );
  }
}
