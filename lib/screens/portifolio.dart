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

class Portifolio extends StatefulWidget {
  const Portifolio({super.key});

  @override
  State<Portifolio> createState() => _PortifolioState();
}

class _PortifolioState extends State<Portifolio> with TickerProviderStateMixin {
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
        title: const Text("Personal Portfolio"),
        automaticallyImplyLeading: true,actions: [
          InkWell(
              onTap: () {
                launchURL('https://github.com/Mofolasayo/Portfolio');
              },
              child: SvgPicture.string(MyIcons.github)),
        ],

      ),
      body: ScreenSizer.isBigMobile(context) ||
              ScreenSizer.isMobile(context) ||
              ScreenSizer.isSmallTablet(context)
          ? PortfolioMobile(visible: visible)
          : PortfolioDesktop(visible: visible),
    );
  }
}

class PortfolioMobile extends StatelessWidget {
  const PortfolioMobile({
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
              width: ScreenSizer.deviceWidth(context) * 0.5,
              child: const VideoPlayerScreen(
                videoUrl: 'assets/videos/meditag.mp4',
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
                widget: const PortfolioText(),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class PortfolioDesktop extends StatelessWidget {
  const PortfolioDesktop({
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
            videoUrl: 'assets/videos/meditag.mp4',
          ),
        ),
        SizedBox(
          //color: Colors.red,
          width: ScreenSizer.deviceWidth(context) * 0.6,
          child: Bio(
            visible: visible,
            widget: const PortfolioText(),
          ),
        )
      ],
    ));
  }
}

class PortfolioText extends StatelessWidget {
  const PortfolioText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: ScreenSizer.isBigMobile(context) ||
                ScreenSizer.isMobile(context) ||
                ScreenSizer.isSmallTablet(context)
            ? ScreenSizer.deviceHeight(context) * 3
            : ScreenSizer.deviceHeight(context) * 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "MediTag is a Flutter-based mobile application designed to streamline the access to doctors' contact information within a hospital setting by leveraging NFC (Near Field Communication) technology. The primary goal of the app is to enhance hospital efficiency and improve the patient experience by making it easier and quicker to obtain necessary information about doctors."),
            Text('Features',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• NFC Tag Reading:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                const Text(
                    'Patients can use their mobile devices to scan NFC tags. This action instantly provides them with contact information for the doctor associated with the scanned tag. This feature is designed to save time and ensure that patients can quickly reach the right medical professional when needed.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• NFC Tag Writing:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                const Text(
                    "Hospital administrators are equipped with the ability to write or encode NFC tags with doctors' contact information. This makes it simple to update or deploy new tags across the hospital as doctors' details change or new doctors join the hospital."),
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
                Text('• Admin Dashboard:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                const Text(
                    'Hospital administrators have access to a centralized dashboard within the app. This dashboard allows them to manage doctor information, oversee NFC tag data, and ensure that all information is current and accurate.'),
              ],
            ),
            Text('Key Objectives',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            const Text(
                '• Seamless Access: The app aims to provide patients with seamless access to the contact information of available doctors, reducing the time and effort required to find the right medical professional.'),
            const Text(
                " • Efficient Management: MediTag facilitates the efficient management of doctors' information on NFC tags, ensuring that the hospital's technological infrastructure is both functional and up-to-date."),
            const Text(
                '• Enhanced Patient Experience: By providing quick and easy access to relevant doctor details, the app significantly improves the patient experience, making interactions within the hospital more convenient and less stressful.'),
            Text('Target Users',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            const Text(
                '• Patients: Individuals seeking quick access to medical professionals within the hospital.'),
            const Text(
                '• Doctors: Medical professionals who need to manage their availability and contact information.'),
            const Text(
                '• Hospital Administration: Staff responsible for maintaining and managing hospital operations, including doctor information and patient interactions.'),
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
      ),
    );
  }
}
