import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/data/search_history_manager.dart';
import 'package:shophub_project/pages/widget/widget_tree.dart';
import 'package:shophub_project/presentation/components/search_history_component.dart';
import 'package:shophub_project/presentation/components/trending_search_component.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController controllerSearch = TextEditingController();
  final SearchHistoryManager historyManager = SearchHistoryManager();

  List<String> allProductImages = [
    KProductImage.headset,
    KProductImage.headphoneWhite,
    KProductImage.bluetoothHeadphoneBlack,
    KProductImage.bluetoothHeadphone,
  ];
  List<String> allProductNames = [
    KProductName.headset,
    KProductName.headphoneWhite,
    KProductName.bluetoothHeadphoneBlack,
    KProductName.bluetoothHeadphone,
  ];

  @override
  void dispose() {
    controllerSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                        // Tambah ke history menggunakan manager
                        historyManager.addToHistory(controllerSearch.text);
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
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                      ) => WidgetTree(),
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // History Search
              if (historyManager.isNotEmpty)
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: historyManager.length,
                  itemBuilder: (context, index) => SearchHistoryComponent(
                    searchText: historyManager.getAt(index),
                    onDelete: () {
                      setState(() {
                        historyManager.removeAt(index);
                      });
                    },
                  ),
                ),

              if (historyManager.isNotEmpty) SizedBox(height: 0),
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
              // Last Seen
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
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
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
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.start,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    TrendingSearchComponent(name: 'Sneakers'),
                    TrendingSearchComponent(name: 'Nike Air Max'),
                    TrendingSearchComponent(name: 'Jeans'),
                    TrendingSearchComponent(name: 'Adventure'),
                    TrendingSearchComponent(name: 'Headphone'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
