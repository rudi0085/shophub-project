import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/data/notifiers.dart';

import 'package:shophub_project/presentation/views/home_page.dart';
import 'package:shophub_project/presentation/views/message_page.dart';
import 'package:shophub_project/presentation/views/profile_page.dart';
import 'package:shophub_project/presentation/views/whistlist_page.dart';
import 'package:shophub_project/presentation/widget/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  WhistlistPage(),
  MessagePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        onPressed: () {},
        backgroundColor: KColors.red,
        child: SvgPicture.asset('svg/steam.svg'),
      ),
      bottomNavigationBar: NavbarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
    );
  }
}
