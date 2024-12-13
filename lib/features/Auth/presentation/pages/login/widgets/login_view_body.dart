import 'package:estore/core/constants.dart';
import 'package:estore/core/utils/size_config.dart';
import 'package:estore/core/widgets/custom_buttons.dart';
import 'package:estore/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),

        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset(kLogo),
        ),

        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        const Expanded(child: SizedBox()),
        const Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomButtonWithIcon2(
                  color: Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.google,
                  text: 'Log in with ',
                ),
              ),
            ),
            
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
