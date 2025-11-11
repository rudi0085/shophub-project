import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/components/search_history_component.dart';
import 'package:shophub_project/presentation/views/home_page.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List<String> allProductImages = [
    KProductImage.headset,
    KProductImage.headphoneWhite,
    KProductImage.bluetoothHeadphoneBlack,
    KProductImage.bluetoothHeadphone,
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerSearch = TextEditingController();
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: KColors.neutral50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: controllerSearch,
                      onChanged: (pure) {
                        setState(() {});
                      },
                      onEditingComplete: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    HomePage(),
                            transitionsBuilder:
                                (
                                  context,
                                  animation,
                                  secondaryAnimation,
                                  child,
                                ) {
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
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              controllerSearch.clear();
                            });
                          },
                          icon: Icon(
                            Iconsax.close_circle,
                            size: 20,
                            color: KColors.neutral300,
                          ),
                        ),
                      ),
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
            SizedBox(
              height: heightScreen * 0.22,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => SearchHistoryComponent(),
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Last Seen',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    height: 1.5,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
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
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allProductImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: Image.asset(allProductImages.elementAt(index)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
