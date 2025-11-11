import 'package:flutter/material.dart';
import 'package:shophub_project/data/constrant.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
    required this.assets,
    required this.title,
    required this.body,
    required this.btname,
    this.onNext,
  });

  final String assets;
  final String title;
  final String body;
  final String btname;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            child: Image.asset(
              assets,
              errorBuilder: (context, error, stackTrace) => const SizedBox(
                height: 120,
                child: Center(child: Text('Image not found')),
              ),
            ),
          ),
          SizedBox(height: 88),
          Container(
            width: double.infinity,
            height: heightScreen * 0.4,
            color: KColors.white,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 46, 16, 24),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      body,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),

                    SizedBox(height: 40),
                    FilledButton(
                      onPressed: onNext,

                      style: FilledButton.styleFrom(
                        backgroundColor: KColors.primary500,
                        minimumSize: Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(btname),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
