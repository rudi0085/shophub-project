import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/views/home_page.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controllerSearch = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 16),
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
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
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

      body: Text('ini adalah Search Widget'),
    );
  }
}
