import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/icons.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/url_launchers.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: ScreenSizer.deviceWidth(context),
        color: MyColors.greyIcon,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 10),
                  child: Text(
                    'Want to connect with me?',
                    style: MyTextStyle.medium(
                        fontSize: 22, color: MyColors.grey500),
                  ),
                ),
                Container(
                  //color: Colors.blue,
                  width: 500,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(
                        MyIcons.mailIcon,
                        height: 25,
                        color: MyColors.grey500,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 0),
                        child: InkWell(
                          onTap: () {
                            sendEmail(
                                email: 'osikoyamofolasayo@gmail.com',
                                body: 'Hello Mofolasayo ');
                          },
                          child: Text("osikoyamofolasayo@gmail.com",
                              style: MyTextStyle.medium(
                                  color: Color.fromARGB(202, 255, 255, 255),
                                  fontSize: 17)),
                        ),
                      ),
                      //SvgPicture.string(copyIcon, height: 28),
                      IconButton(
                        icon: SvgPicture.string(MyIcons.copyIcon, height: 28),
                        onPressed: () {
                          final email = 'osikoyamofolasayo@gmail.com';
                          Clipboard.setData(ClipboardData(text: email));
                          //Future.delayed(Duration(seconds: 2), () => text = null);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: MyColors.grey1000,
                                content:
                                    const Center(child: Text('Email copied!'))),
                          );
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  //color: Colors.green,
                  width: 500,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(MyIcons.phoneIcon, height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 0),
                        child: InkWell(
                          onTap: () {
                            makePhoneCall('+2348104942229');
                          },
                          child: Text("+2348104942229",
                              style: MyTextStyle.medium(
                                fontSize: 17,
                                color: Color.fromARGB(202, 255, 255, 255),
                              )),
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.string(MyIcons.copyIcon, height: 28),
                        onPressed: () {
                          final phoneNumber = '+2348104942229';
                          Clipboard.setData(ClipboardData(text: phoneNumber));
                          //Future.delayed(Duration(seconds: 2), () => text = null);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: MyColors.grey1000,
                                content: const Center(
                                    child: Text('Phone number copied!'))),
                          );
                        },
                      )
                      //SvgPicture.string(copyIcon, height: 28),
                    ],
                  ),
                ),
                /*SizedBox(
                  height: 30,
                ),*/
                /*Text(
                  "You can also find me on these platforms!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300),
                ),*/
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: ScreenSizer.isMobile(context) ||
                          ScreenSizer.isSmallTablet(context) ||
                          ScreenSizer.isBigMobile(context)
                      ? ScreenSizer.deviceWidth(context) * 0.25
                      : ScreenSizer.deviceWidth(context) * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launchURL('https://x.com/Mofolasayo_O');
                        },
                        child: SvgPicture.string(
                          MyIcons.xIcon,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            launchURL('https://github.com/Mofolasayo/');
                          },
                          child: SvgPicture.string(MyIcons.github)),
                      GestureDetector(
                          onTap: () {
                            launchURL(
                                'https://www.linkedin.com/in/mofolasayo-osikoya-b53a832a0/');
                          },
                          child: SvgPicture.string(MyIcons.linkedIn)),
                      //SvgPicture.string(figma)
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: MyColors.greyIcon,
              height: 30,
              width: ScreenSizer.deviceWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Made by Mofolasayo with Flutter",
                      style: TextStyle(color: MyColors.grey700, fontSize: 18)),
                  SvgPicture.string(
                    MyIcons.blueHeart,
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
