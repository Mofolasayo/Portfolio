import 'package:flutter/material.dart';
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
      child: Column(
        children: [
          Text('Work Experience'),
          Expereience(
            visible: visible,
            timeDuration: 'MARCH 2024 - JUNE 2024',
            role: 'Mobile App Developer',
            duties:
                "Design, develop, and maintain high-performance, scalable mobile applications using Flutter.",
          ),
          Expereience(
            visible: visible,
            timeDuration: 'JUNE 2024 - AUGUST 2024',
            role: 'Mobile App Developer, HNG',
            duties:
                "Design, develop, and maintain high-performance, scalable mobile applications using Flutter.",
          ),
          SizedBox(
            height: 40,
          )
        ],
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
        width: ScreenSizer.deviceWidth(context) * 0.95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(timeDuration),
            Text(role),
            Text(duties),
          ],
        ),
      ),
    );
  }
}
