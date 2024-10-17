import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/animated_texts.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/strings.dart';
import 'package:mofolasayo/widgets/available.dart';
import 'package:mofolasayo/widgets/circle_avatar.dart';
import 'package:mofolasayo/widgets/resume_and_socials.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScreenSizer.isBigMobile(context) ||
              ScreenSizer.isMobile(context) ||
              ScreenSizer.isSmallTablet(context)
          ? const Mobile()
          : const DesktopandTablet(),
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
          const MyCircleAvatar(maxRadius: 100.0, minRadius: 60.0),
          const SizedBox(
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
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: ScreenSizer.deviceWidth(context) * 0.85,
            height: ScreenSizer.isBigMobile(context)
                ? ScreenSizer.deviceHeight(context) * 0.05
                : ScreenSizer.deviceHeight(context) * 0.04,
            child: available(14),
          ),
          SizedBox(
            width: ScreenSizer.deviceWidth(context) * 0.85,
            child: ResumeAndSocials(
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

class DesktopandTablet extends StatelessWidget {
  const DesktopandTablet({
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
            child: Expanded(
              // color: Colors.yellow,
              /*height: ScreenSizer.isDesktop(context)
                  ? ScreenSizer.deviceHeight(context) * 0.2 + 110
                  : ScreenSizer.deviceHeight(context) * 0.8 + 100,
              width: ScreenSizer.deviceWidth(context) * 0.6,*/
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    //color: Colors.yellow,
                    child: AnimatedText(
                      myFontWeight: FontWeight.bold,
                      textHeight: ScreenSizer.deviceHeight(context) * 0.08,
                      fontSize40: ScreenSizer.isDesktop(context) ? 35 : 20,
                      textWidth: ScreenSizer.deviceWidth(context) * 0.6,
                    ),
                  ),
                  Container(
                    // color: Colors.red,

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
                  SizedBox(
                    width: ScreenSizer.deviceWidth(context) * 0.6,
                    child: available(13),
                    //color: Colors.amber,
                  ),
                  ResumeAndSocials(
                    height: 48.0,
                    width: 80.0,
                    size: ScreenSizer.deviceWidth(context) * 0.1,
                  )
                ],
              ),
            ),
          ),
          const MyCircleAvatar(maxRadius: 150.0, minRadius: 80.0)
        ],
      ),
    );
  }
}
