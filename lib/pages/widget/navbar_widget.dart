import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectPage, child) {
        return BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: KColors.primary500,
            unselectedItemColor: KColors.neutral300,
            selectedLabelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              height: 1.5,
              fontWeight: FontWeight.w400,

              color: KColors.primary500,
            ),
            unselectedLabelStyle: TextStyle(
              color: KColors.neutral300,
              fontFamily: 'Poppins',
              fontSize: 12,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
            currentIndex: selectPage,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home_1, size: 20),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.heart, size: 20),
                label: 'Whistlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.message, size: 20),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user_octagon, size: 20),
                label: 'Profile',
              ),
            ],
            onTap: (int value) {
              selectedPageNotifier.value = value;
            },
          ),
        );
      },
    );
  }
}
