import 'package:flutter/material.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/widget/welcom_widget.dart';
import 'package:shophub_project/presentation/views/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

final _controller = PageController();

List<Widget> _page = [
  Onboarding1View1(),
  Onboarding1View2(),
  Onboarding1View3(),
];

class _WelcomePageState extends State<WelcomePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KColors.neutral50,
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            controller: _controller,
            scrollDirection: Axis.horizontal,
            reverse: false,
            children: _page,
          ),

          // Smooth Page Indicator
          Positioned(
            bottom: heightScreen * 0.35,
            left: widthScreen * 0.45,
            right: widthScreen * 0.45,
            child: SmoothPageIndicator(
              controller: _controller,
              count: _page.length,
              effect: ExpandingDotsEffect(dotHeight: 6, dotWidth: 6),
            ),
          ),
        ],
      ),
    );
  }
}

class Onboarding1View1 extends StatelessWidget {
  const Onboarding1View1({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeWidget(
      assets: 'assets/images/welcome1.png',
      title: KTitleOnboarding.tOnboarding1,
      body: KBodyOnboarding.bOnboarding1,
      btname: 'Next',
      onNext: () {
        _controller.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}

class Onboarding1View2 extends StatelessWidget {
  const Onboarding1View2({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeWidget(
      assets: 'assets/images/welcome2.png',
      title: KTitleOnboarding.tOnboarding2,
      body: KBodyOnboarding.bOnboarding2,
      btname: 'Next',
      onNext: () {
        _controller.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}

class Onboarding1View3 extends StatelessWidget {
  const Onboarding1View3({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeWidget(
      assets: 'assets/images/welcome3.png',
      title: KTitleOnboarding.tOnboarding3,
      body: KBodyOnboarding.bOnboarding3,
      btname: 'Get Started',
      onNext: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
    );
  }
}
