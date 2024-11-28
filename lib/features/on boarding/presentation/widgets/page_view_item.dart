import 'package:estore/core/utils/size_config.dart';
import 'package:estore/core/widgets/space_widget.dart';
import 'package:flutter/cupertino.dart';


class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
            height: SizeConfig.defaultSize! * 25, child: Image.asset(image!)),
        const VerticalSpace(2.5),
        Text(
          title!,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(
          subTitle!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 15,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
