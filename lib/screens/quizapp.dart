import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mofolasayo/utils/bio.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/icons.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/skills.dart';
import 'package:mofolasayo/utils/url_launchers.dart';
import 'package:mofolasayo/utils/video_player.dart';

class Quizapp extends StatefulWidget {
  const Quizapp({super.key});

  @override
  State<Quizapp> createState() => _QuizappState();
}

class _QuizappState extends State<Quizapp> with TickerProviderStateMixin {
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
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Quiz app"),
        actions: [
          InkWell(
              onTap: () {
                launchURL('https://github.com/Mofolasayo/Quiz_App');
              },
              child: SvgPicture.string(MyIcons.github)),
        ],
      ),
      body: ScreenSizer.isBigMobile(context) ||
              ScreenSizer.isMobile(context) ||
              ScreenSizer.isSmallTablet(context)
          ? QuizAppMobile(
              visible: visible,
            )
          : QuizAppDesktop(visible: visible),
    );
  }
}

class QuizAppMobile extends StatelessWidget {
  const QuizAppMobile({
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
              height: 150,
            ),
            Container(
              color: Colors.transparent,
              height: 500,
              width: ScreenSizer.deviceWidth(context) * 0.55,
              child: const VideoPlayerScreen(
                videoUrl: 'assets/videos/quiz.mp4',
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
                widget: const QuizAppDescription(),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class QuizAppDesktop extends StatelessWidget {
  const QuizAppDesktop({
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
            videoUrl: 'assets/videos/quiz.mp4',
          ),
        ),
        SizedBox(
          //color: Colors.red,
          width: ScreenSizer.deviceWidth(context) * 0.6,
          child: Bio(
            visible: visible,
            widget: const QuizAppDescription(),
          ),
        )
      ],
    ));
  }
}

class QuizAppDescription extends StatelessWidget {
  const QuizAppDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenSizer.isBigMobile(context) ||
            ScreenSizer.isMobile(context) ||
            ScreenSizer.isSmallTablet(context)
        ? const QuizAppText()
        : const SingleChildScrollView(
            child: QuizAppText(),
          );
  }
}

class QuizAppText extends StatelessWidget {
  const QuizAppText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
              "The Interactive Flutter Quiz App is designed to challenge users with a variety of questions that test their knowledge across multiple topics. The app provides an engaging and educational experience by combining intuitive design with essential features that promote active learning and self-assessment."),
          const SizedBox(
            height: 30,
          ),
          Text('Core Features',
              style:
                  MyTextStyle.semiBold(fontSize: 18, color: MyColors.grey600)),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Multiple Choice Format:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'The app presents questions in a multiple-choice format, offering several answer options for each question. This format encourages users to actively participate in the quiz, fostering critical thinking as they consider each possible answer before making their selection.'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Real Time Feedback:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  "As users answer each question, the app provides immediate feedback on whether the selected answer is correct or incorrect. This instant response allows users to track their performance in real-time, helping them to understand their strengths and weaknesses as they progress through the quiz."),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Answer Tracking:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'The app keeps a detailed record of all chosen answers, including both correct and incorrect selections. This tracking feature is invaluable for users who wish to review their performance, analyze mistakes, and focus on areas that require further study or improvement.'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Final Score Calculation:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'After completing the quiz, the app calculates and displays a final score, summarizing the user’s overall performance. This feature provides a clear and concise evaluation of the user\'s knowledge, highlighting areas of excellence as well as topics that may need additional attention.'),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
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
                  text: 'NFC Technology',
                ),
                Skills(
                  text: 'Provider',
                ),
                Skills(
                  text: 'Hive',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
