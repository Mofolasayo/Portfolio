// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/icons.dart';
import 'package:mofolasayo/utils/url_launchers.dart';
import 'package:mofolasayo/widgets/resume.dart';

class ResumeAndSocials extends StatelessWidget {
  const ResumeAndSocials({
    super.key,
    required this.height,
    required this.width,
    required this.size,
  });
  final double height;
  final double width;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        OutlinedButton(
            onPressed: () {
              launchURL(
                  'https://drive.google.com/file/d/1KCnDOVnnVDCenNKAIeNRU37rVYTVcxu7/view?usp=sharing');
            },
            child: const Expanded(
              child: Resume(),
            )),
        SizedBox(
          // color: Colors.blue,
          width: size,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  launchURL('https://x.com/Mofolasayo_O');
                },
                child: SvgPicture.string(
                  MyIcons.xIcon,
                  color: MyColors.grey500,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    launchURL('https://github.com/Mofolasayo/');
                  },
                  child: SvgPicture.string(
                    MyIcons.github,
                    color: MyColors.grey500,
                  )),
              GestureDetector(
                  onTap: () {
                    launchURL(
                        'https://www.linkedin.com/in/mofolasayo-osikoya-b53a832a0/');
                  },
                  child: SvgPicture.string(
                    MyIcons.linkedIn,
                    color: MyColors.grey500,
                  )),

              // SvgPicture.string(figma)
            ],
          ),
        )
      ],
    );
  }
}
