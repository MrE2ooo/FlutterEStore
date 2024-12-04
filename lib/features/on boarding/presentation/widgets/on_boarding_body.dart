import 'package:estore/core/utils/size_config.dart';
import 'package:estore/core/widgets/custom_buttons.dart';
import 'package:estore/features/on%20boarding/presentation/widgets/custom_indicator.dart';
import 'package:estore/features/on%20boarding/presentation/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Move CustomPageView horizontally
        Transform.translate(
          offset: Offset(0, -SizeConfig.defaultSize! * 11), // Adjust the Y offset as needed
          child: CustomPageView(
            pageController: pageController,
          ),
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 17,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? (pageController?.page?.round() ?? 0) : 0,
          ),
        ),
        Visibility(
  visible: pageController!.hasClients
      ? (pageController?.page == 2 ? false : true)
      : true,
  child: Positioned(
    top: SizeConfig.defaultSize! * 5,
    right: 32,
    child: GestureDetector(
      onTap: () {
        // Move to the last page when "Skip" is tapped
        pageController?.animateToPage(
          2, // Assuming 2 is the index of the last page
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      },
      child: const Text(
        'Skip',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: Color(0xff898989),
        ),
        textAlign: TextAlign.left,
      ),
    ),
  ),
),

        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              } else {
                Get.to(() => (), transition: Transition.rightToLeft, duration: const Duration(milliseconds: 500)); // Replace with your target page widget
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
