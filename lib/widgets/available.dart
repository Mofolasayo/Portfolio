import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/icons.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';

Widget available(double fontSize) {
  return Row(
    children: [
      SvgPicture.string(MyIcons.greenDot),
      Text(" Available for new projects",
          style:
              MyTextStyle.regular(color: MyColors.grey600, fontSize: fontSize)),
    ],
  );
}
