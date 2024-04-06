import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/onboarding01/onboarding_01.dart';
import 'package:oline_learning_app/modules/onboarding02/onboaeding_02.dart';
import 'package:oline_learning_app/modules/onboarding03/onboarding_03.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OOnBoarding extends StatefulWidget {
  const OOnBoarding({super.key});

  @override
  State<OOnBoarding> createState() => _OOnBoardingState();
}

class _OOnBoardingState extends State<OOnBoarding> {
  @override
  Widget build(BuildContext context) {
    PageController pagecon = PageController();

    List page = [
      const OnBoarding01(),
      const OnBoarding02(),
      const OnBoarding03()
    ];
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: pagecon,
              onPageChanged: (value) {},
              itemCount: page.length,
              itemBuilder: (BuildContext context, int index) {
                return page[index % page.length];
              }),
          Positioned(
            bottom: 170,
            left: 150,
            child: SmoothPageIndicator(
              controller: pagecon,
              count: 3,
              effect: const SwapEffect(
                  activeDotColor: Colors.blue, dotHeight: 10, dotWidth: 10),
            ),
          )
        ],
      ),
    );
  }
}
