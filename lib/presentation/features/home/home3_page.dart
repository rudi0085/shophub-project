import 'package:flutter/material.dart';

import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/widget/card_widget.dart';
import 'package:shophub_project/presentation/widget/search_widget.dart';

class Home3Page extends StatefulWidget {
  const Home3Page({super.key});

  @override
  State<Home3Page> createState() => _Home3PageState();
}

class _Home3PageState extends State<Home3Page> {
  TextEditingController controllerSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.primary500,
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 118),
            child: Container(color: KColors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [CardWidget(), CardGraphic()]),
          ),
        ],
      ),
    );
  }
}
