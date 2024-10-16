import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/bio.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/skills.dart';
import 'package:mofolasayo/utils/video_player.dart';

class Sizzle extends StatefulWidget {
  const Sizzle({super.key});

  @override
  State<Sizzle> createState() => _SizzleState();
}

class _SizzleState extends State<Sizzle> with TickerProviderStateMixin {
  bool visible = true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        visible = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Sizzle"),
      ),
      body: ScreenSizer.isBigMobile(context) ||
              ScreenSizer.isMobile(context) ||
              ScreenSizer.isSmallTablet(context)
          ? SizzleMobile(visible: visible)
          : SizzleDesktop(visible: visible),
    );
  }
}

class SizzleMobile extends StatelessWidget {
  const SizzleMobile({
    super.key,
    required this.visible,
  });

  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      thickness: 8.0,
      radius: const Radius.circular(10),
      child: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 130,
            ),
            Container(
              color: Colors.transparent,
              height: 500,
              width: ScreenSizer.deviceWidth(context) * 0.5,
              child: const VideoPlayerScreen(
                videoUrl: 'assets/videos/Sizzle.mp4',
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              //color: Colors.red,
              width: ScreenSizer.deviceWidth(context) * 0.9,
              child: Bio(
                visible: visible,
                widget: const SizzleText(),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class SizzleDesktop extends StatelessWidget {
  const SizzleDesktop({
    super.key,
    required this.visible,
  });

  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.transparent,
          height: 500,
          width: ScreenSizer.deviceWidth(context) * 0.25,
          child: const VideoPlayerScreen(
            videoUrl: 'assets/videos/Sizzle.mp4',
          ),
        ),
        SizedBox(
          //color: Colors.red,
          width: ScreenSizer.deviceWidth(context) * 0.6,
          child: Bio(
            visible: visible,
            widget: const SizzleText(),
          ),
        )
      ],
    ));
  }
}

class SizzleText extends StatelessWidget {
  const SizzleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: ScreenSizer.deviceHeight(context) * 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Sizzle is a Flutter-based recipe app designed to make cooking both simple and enjoyable. Whether you're a seasoned chef or just starting in the kitchen, Sizzle provides a wide range of recipes from various cuisines, complete with detailed instructions and filtering options to help you find the perfect dish for any occasion."),
            Text('Core Features',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Recipe Browsing:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                const Text(
                    'Explore a diverse collection of recipes from different cuisines. The app allows users to discover new dishes, offering inspiration for every meal of the day.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Detailed Instruction:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                const Text(
                    "Each recipe comes with step-by-step instructions and a list of ingredients. This feature ensures that users can easily follow along, making the cooking process straightforward and stress-free."),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Profile Management:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                const Text(
                    'Doctors have control over their profiles within the app. They can update details such as their availability, office hours, and other relevant contact information. This ensures that the information provided via NFC tags and other app features is always up-to-date.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Filter Meal Type:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                const Text(
                    'Sizzle offers filtering options, allowing users to sort recipes by meal type, such as breakfast, lunch, dinner, snacks, and drinks. This feature helps users quickly find recipes that fit their needs, whether they’re planning a morning meal or a late-night snack.'),
              ],
            ),
            const Text(
                'The Sizzle Recipe App is an excellent tool for anyone looking to enhance their cooking experience. With its extensive recipe collection, detailed instructions, and convenient filtering options, Sizzle makes it easy to find and prepare delicious meals for any time of day.'),
            SizedBox(
              width: ScreenSizer.deviceWidth(context),
              height: 70,
              child: const Wrap(
                spacing: 5.0,
                runSpacing: 2.0,
                alignment: WrapAlignment.start,
                children: [
                  Skills(
                    text: 'Flutter',
                  ),
                  Skills(
                    text: 'Dart',
                  ),
                  Skills(
                    text: 'Restful Api',
                  ),
                  Skills(
                    text: 'Provider',
                  ),
                  Skills(
                    text: 'Dio',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
