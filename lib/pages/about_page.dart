import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mofolasayo/utils/animated_texts.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/icons.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/strings.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 350,

      //color: Colors.white,
      child: ScreenSizer.isBigMobile(context) || ScreenSizer.isMobile(context)
          ? Mobile()
          : desktopandTablet(),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          circleAvatar(maxRadius: 100.0, minRadius: 60.0),
          SizedBox(
            height: 15,
          ),
          AnimatedText(
            myFontWeight: FontWeight.bold,
            textHeight: ScreenSizer.isDesktop(context)
                ? ScreenSizer.deviceHeight(context) * 0.08
                : ScreenSizer.deviceHeight(context) * 0.06,
            fontSize40: ScreenSizer.isDesktop(context) ? 35 : 22,
            textWidth: ScreenSizer.deviceWidth(context) * 0.85,
          ),
          SizedBox(
            //height: ScreenSizer.deviceHeight(context) * 0.2,
            width: ScreenSizer.deviceWidth(context) * 0.85,
            //width: ScreenSizer.isDesktop(context) ? 800 : 600,
            //color: Colors.blue,
            child: Text(aboutMe,
                style: MyTextStyle.regular(
                  color: MyColors.grey500,
                  fontSize: 16,
                )),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: ScreenSizer.deviceWidth(context) * 0.85,
            //color: Colors.amber,
            height: ScreenSizer.isBigMobile(context)
                ? ScreenSizer.deviceHeight(context) * 0.05
                : ScreenSizer.deviceHeight(context) * 0.04,
            child: available(14),
          ),
          Container(
            width: ScreenSizer.deviceWidth(context) * 0.85,
            // color: Colors.red,
            child: resumeAndSocials(
              height: 40.0,
              width: 80.0,
              size: ScreenSizer.deviceWidth(context) * 0.3,
            ),
          )
        ],
      ),
    );
  }
}

class desktopandTablet extends StatelessWidget {
  const desktopandTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              // color: Colors.yellow,
              height: ScreenSizer.isDesktop(context)
                  ? ScreenSizer.deviceHeight(context) * 0.2 + 110
                  : ScreenSizer.deviceHeight(context) * 0.8 + 100,
              width: ScreenSizer.deviceWidth(context) * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.red,
                    child: AnimatedText(
                      myFontWeight: FontWeight.bold,
                      textHeight: ScreenSizer.isDesktop(context)
                          ? ScreenSizer.deviceHeight(context) * 0.08
                          : ScreenSizer.deviceHeight(context) * 0.8,
                      fontSize40: ScreenSizer.isDesktop(context) ? 35 : 20,
                      textWidth: ScreenSizer.deviceWidth(context) * 0.6,
                    ),
                  ),
                  Container(
                    // height: ScreenSizer.isDesktop(context) ? 100 : 80,
                    width: ScreenSizer.deviceWidth(context) * 0.6,
                    //width: ScreenSizer.isDesktop(context) ? 800 : 600,
                    // color: Colors.blue,
                    child: Text(aboutMe,
                        style: TextStyle(
                            color: MyColors.grey500,
                            fontSize: ScreenSizer.isDesktop(context) ? 16 : 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    child: available(13),
                    width: ScreenSizer.deviceWidth(context) * 0.6,
                    //color: Colors.amber,
                  ),
                  resumeAndSocials(
                    height: 48.0,
                    width: 80.0,
                    size: ScreenSizer.deviceWidth(context) * 0.1,
                  )
                ],
              ),
            ),
          ),
          circleAvatar(maxRadius: 150.0, minRadius: 80.0)
        ],
      ),
    );
  }
}

class resumeAndSocials extends StatelessWidget {
  const resumeAndSocials({
    super.key,
    required this.height,
    required this.width,
    required this.size,
  });
  final height;
  final width;
  final size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
            onPressed: () {},
            child: Container(
              height: height,
              width: width,
              child: Resume(),
            )),
        Container(
          // color: Colors.blue,
          width: size,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  // launchURL('https://x.com/moe_thetechgirl/');
                },
                child: SvgPicture.string(
                  MyIcons.xIcon,
                  color: MyColors.grey500,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    // launchURL('https://github.com/Mofolasayo/');
                  },
                  child: SvgPicture.string(
                    MyIcons.github,
                    color: MyColors.grey500,
                  )),
              GestureDetector(
                  onTap: () {
                    /* launchURL(
                        'https://www.linkedin.com/in/mofolasayo-osikoya-b53a832a0/');*/
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

class circleAvatar extends StatelessWidget {
  const circleAvatar({
    super.key,
    required this.maxRadius,
    required this.minRadius,
  });
  final maxRadius;
  final minRadius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: maxRadius,
      minRadius: minRadius,
      backgroundImage: AssetImage('assets/images/myImage.jpg'),
    );
  }
}

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
