import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';

class ExpereiencePage extends StatefulWidget {
  const ExpereiencePage({super.key});

  @override
  State<ExpereiencePage> createState() => _ExpereiencePageState();
}

class _ExpereiencePageState extends State<ExpereiencePage>
    with TickerProviderStateMixin {
  bool visible = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        visible = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: 400,
      //color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: ScreenSizer.deviceWidth(context) * 0.9,
                child: Text(
                  'Work Experience',
                  style:
                      MyTextStyle.medium(fontSize: 22, color: MyColors.grey700),
                )),
            SizedBox(
              height: 10,
            ),
            Expereience(
              visible: visible,
              timeDuration: 'MARCH 2024 - JUNE 2024',
              role:
                  'Swee - Lagos, Nigeria (Remote) | Mobile Application Developer',
              duties:
                  '''• Developed and maintained high-performance Flutter applications, ensuring a seamless user experience across Android and Web platforms.\n• Collaborated with cross-functional teams to transform product visions into user-friendly, scalable apps. \n• Implemented responsive UI/UX designs and animations, while consistently writing clean, maintainable Dart code.
        
        ''',
            ),
            SizedBox(
              height: 15,
            ),
            Expereience(
              visible: visible,
              timeDuration: 'JUNE 2024 - AUGUST 2024',
              role: 'HNG Internship | Flutter Developer',
              duties:
                  '''• Collaborated with a team to develop intuitive mobile applications using Flutter, integrating RESTful APIs and third-party libraries to enhance functionality. \n• Engaged in code reviews and utilized Git/GitHub for efficient source code management. \n• Implemented local data storage with Hive, ensuring offline capabilities, while maintaining clean, well-documented Dart code.''',
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class Expereience extends StatelessWidget {
  const Expereience({
    super.key,
    required this.visible,
    required this.timeDuration,
    required this.role,
    required this.duties,
  });

  final bool visible;
  final String timeDuration;
  final String role;
  final String duties;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 0.0 : 1.0,
      duration: const Duration(seconds: 10),
      child: Container(
        width: ScreenSizer.deviceWidth(context) * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              role,
              style: MyTextStyle.medium(fontSize: 20, color: MyColors.grey500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              timeDuration,
              style: MyTextStyle.regular(
                  fontSize: 16, isItalic: true, color: MyColors.grey500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              duties,
              style: MyTextStyle.medium(fontSize: 16, color: MyColors.grey600),
            ),
          ],
        ),
      ),
    );
  }
}
