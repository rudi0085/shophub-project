import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/features/home/history_page.dart';
import 'package:shophub_project/presentation/features/home/topup_page.dart';
import 'package:shophub_project/presentation/features/home/transfer_page.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  var isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: KColors.white,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // ← Wrap content
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Your Balance',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  isVisible == true ? '\$890.00' : "\$*****",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: KColors.primary500,
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: isVisible
                      ? Icon(Iconsax.eye, color: KColors.neutral300, size: 16)
                      : Icon(
                          Iconsax.eye_slash,
                          color: KColors.neutral300,
                          size: 16,
                        ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                                return TopupPage();
                              },
                        ),
                      );
                    },
                    child: CardIcon(
                      icon: Iconsax.wallet_add_1_copy,
                      name: 'Top Up',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                                return TransferPage();
                              },
                        ),
                      );
                    },
                    child: CardIcon(
                      icon: Iconsax.card_send_copy,
                      name: 'Transfer',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                                return HistoryPage();
                              },
                        ),
                      );
                    },
                    child: CardIcon(
                      icon: Iconsax.empty_wallet_tick_copy,
                      name: 'History',
                    ),
                  ),
                  InkWell(
                    child: CardIcon(icon: Iconsax.category_copy, name: 'More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Model class untuk data card
class CardIcon extends StatelessWidget {
  const CardIcon({super.key, required this.icon, required this.name});
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: KColors.primary50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, size: 24, color: KColors.primary500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Text(
            name,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class CardGraphic extends StatelessWidget {
  const CardGraphic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF9A37EC), Color(0xFF9E39ED).withOpacity(0.8)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/card/ornament.png',
                    scale: 0.9,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 4,
                child: Image.asset('assets/images/card/discount1.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Unlock Daily Vouchers for Endless Savings!',
                      style: TextStyle(
                        color: KColors.white,
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      'Get Voucher Every Day',
                      style: TextStyle(
                        color: KColors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(height: 16),
                    FilledButton(
                      onPressed: () {},

                      style: FilledButton.styleFrom(
                        backgroundColor: KColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: KColors.primary500,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
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
