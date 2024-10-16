import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/bio.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/skills.dart';

import '../utils/video_player.dart';

class Malltiverse extends StatefulWidget {
  const Malltiverse({super.key});

  @override
  State<Malltiverse> createState() => _MalltiverseState();
}

class _MalltiverseState extends State<Malltiverse>
    with TickerProviderStateMixin {
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
        title: const Text('Malltiverse'),
      ),
      body: ScreenSizer.isBigMobile(context) ||
              ScreenSizer.isMobile(context) ||
              ScreenSizer.isSmallTablet(context)
          ? MalltiverseMobile(visible: visible)
          : MalltiverseDesktop(visible: visible),
    );
  }
}

class MalltiverseMobile extends StatelessWidget {
  const MalltiverseMobile({
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
                height: 100,
              ),
              Container(
                color: Colors.transparent,
                height: ScreenSizer.deviceHeight(context) * 0.6,
                width: ScreenSizer.deviceWidth(context),
                child: const VideoPlayerScreen(
                  videoUrl: 'assets/videos/malltiverse.mp4',
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                //color: Colors.red,
                // height: ScreenSizer.deviceHeight(context) * 0.5,
                width: ScreenSizer.deviceWidth(context) * 0.9,
                child: Bio(
                  visible: visible,
                  widget: const MalltiverseDescription(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MalltiverseDesktop extends StatelessWidget {
  const MalltiverseDesktop({
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
            videoUrl: 'assets/videos/malltiverse.mp4',
          ),
        ),
        SizedBox(
          //color: Colors.red,
          width: ScreenSizer.deviceWidth(context) * 0.6,
          child: Bio(
            visible: visible,
            widget: const MalltiverseDescription(),
          ),
        )
      ],
    ));
  }
}

class MalltiverseDescription extends StatelessWidget {
  const MalltiverseDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenSizer.isBigMobile(context) ||
            ScreenSizer.isMobile(context) ||
            ScreenSizer.isSmallTablet(context)
        ? const MalltiverseText()
        : const SingleChildScrollView(
            child: MalltiverseText(),
          );
  }
}

class MalltiverseText extends StatelessWidget {
  const MalltiverseText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSizer.isBigMobile(context) ||
              ScreenSizer.isMobile(context) ||
              ScreenSizer.isSmallTablet(context)
          ? ScreenSizer.deviceHeight(context) * 3.5
          : ScreenSizer.deviceHeight(context) * 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
              "Malltiverse is a Flutter-based mobile shopping application designed to offer a seamless and user-friendly shopping experience. The app incorporates a simulated checkout and payment system, delivery options, and efficient cart management, making it a suitable solution for mobile commerce."),
          Text('Features',
              style:
                  MyTextStyle.semiBold(fontSize: 18, color: MyColors.grey600)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Home Screen:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'The home screen is the central hub of the app, displaying various product categories and featured products. Users can easily navigate through different sections to explore a wide range of available items.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Category Items Screen:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  "This screen displays the items available within a selected category in a scrollable grid view. The grid view includes dot indicators for intuitive navigation, allowing users to browse through products with ease."),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Add to Cart:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'Users can add items to their cart directly from the product listing. The cart system is robust, providing options to increase or decrease item quantities and view the total price before proceeding to checkout.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Cart Screen:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'The cart screen shows all the items that the user has added to their cart. It offers functionality for adjusting quantities and reviewing the total cost, ensuring that users have full control over their purchases before finalizing them.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• CheckoutScreen:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'The checkout screen is where users complete their purchase. It includes a form for entering payment details and provides options for selecting delivery or pickup. The form features radio buttons for various user selections and validates the entered card details to ensure a smooth and secure transaction.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Local Storage:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'The app uses Hive, a lightweight and fast key-value database, for persisting data locally. This ensures that user data, such as cart items, are saved even when the app is closed, providing a seamless experience when users return to the app.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Timbu Api Integration:',
                  style: MyTextStyle.regular(
                      fontSize: 18, color: MyColors.grey600)),
              const Text(
                  'Malltiverse fetches product data from the Timbu API, allowing users to browse and add products to their cart. This integration keeps the app\'s product listings up-to-date and dynamically populated.'),
            ],
          ),
          Text('Key Objectives',
              style:
                  MyTextStyle.semiBold(fontSize: 18, color: MyColors.grey600)),
          const Text(
              '• Streamlined Shopping Experience: The app aims to provide a seamless and intuitive shopping experience, from product exploration to checkout.'),
          const Text(
              " • Efficient Cart Management: With its robust cart system, Malltiverse ensures that users can easily manage their selected items, making adjustments as needed before finalizing their purchases."),
          const Text(
              '• Secure and User-Friendly Payment System: The app focuses on ensuring secure and smooth transactions through well-implemented form validation and user-friendly checkout options.'),
          Text('Target Users',
              style:
                  MyTextStyle.semiBold(fontSize: 18, color: MyColors.grey600)),
          const Text(
              '• Shoppers: Individuals looking for a convenient and efficient mobile shopping experience.'),
          const Text(
              '• Retailers: Businesses wanting to provide their products through a mobile platform with a user-friendly interface.'),
          const Text(
              '• Administrators: Those responsible for managing product data and ensuring a smooth shopping experience for users.'),
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
                  text: 'Timbu Api',
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
