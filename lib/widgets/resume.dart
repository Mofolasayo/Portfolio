import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/icons.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';

class Resume extends StatelessWidget {
  const Resume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Résumé ',
          style: MyTextStyle.medium(fontSize: 14, color: MyColors.grey500),
        ),
        SvgPicture.string(MyIcons.download)
      ],
    );
  }
}
