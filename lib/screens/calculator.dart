import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/bio.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/skills.dart';
import 'package:mofolasayo/utils/video_player.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> with TickerProviderStateMixin {
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
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.red,
            height: 500,
            width: ScreenSizer.deviceWidth(context) * 0.25,
            child:
                const VideoPlayerScreen(videoUrl: 'assets/videos/meditag.mp4'),
          ),
          Container(
            //color: Colors.red,
            width: ScreenSizer.deviceWidth(context) * 0.6,
            child: Bio(
              visible: visible,
              widget: CalculatorText(),
            ),
          )
        ],
      )),
    );
  }
}

class CalculatorText extends StatelessWidget {
  const CalculatorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: ScreenSizer.deviceHeight(context) * 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "The Simple Calculator App is a user-friendly tool designed to perform essential arithmetic operations with ease. Built with a clean and intuitive interface, this app provides a seamless experience for users who need quick and accurate calculations in their daily tasks. Whether you're adding up expenses, subtracting values, multiplying numbers, or dividing figures, the Simple Calculator App ensures efficiency and simplicity in every calculation."),
            Text('Core Features',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Basic Arithmetic Operations:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The app supports the four fundamental arithmetic functions: addition, subtraction, multiplication, and division. Users can perform these operations effortlessly with just a few taps.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Clear and intuitive interface:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    "The calculator is designed with a straightforward layout, featuring large, easy-to-press buttons and a display that shows both the current input and the result. This makes it accessible for users of all ages."),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Real time Calculation:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'As users input numbers and operators, the app calculates the result in real-time, allowing for immediate feedback and adjustments if needed.'),
              ],
            ),
            Text(
                'The Simple Calculator App is an essential tool for anyone who needs quick and reliable arithmetic calculations. With its straightforward design and real-time functionality, it simplifies the process of performing everyday math, making it an indispensable companion for students, professionals, and anyone in need of a reliable calculator.'),
            Container(
              width: ScreenSizer.deviceWidth(context) * 0.4,
              height: 70,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}



