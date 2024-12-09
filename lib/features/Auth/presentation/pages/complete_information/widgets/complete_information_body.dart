import 'package:estore/core/widgets/custom_buttons.dart';
import 'package:estore/core/widgets/space_widget.dart';
import 'package:estore/features/Auth/presentation/pages/complete_information/widgets/complete_information_item.dart';
import 'package:flutter/material.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSpace(10),
          CompleteInfoItem(
            text: 'Enter your name',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          VerticalSpace(5),
          CustomGeneralButton(
            text: 'Login',
          )
        ],
      ),
    );
  }
}
