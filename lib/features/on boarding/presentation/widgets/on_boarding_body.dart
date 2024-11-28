
import 'package:estore/core/utils/size_config.dart';
import 'package:estore/core/widgets/custom_buttons.dart';
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
        CustomPageView(
          pageController: pageController,
        ),
       /* Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),*/
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
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
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() =>{} , transition: Transition.rightToLeft , duration: Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
            )),
      ],
    );
  }
}
