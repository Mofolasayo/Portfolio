import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/bio.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/skills.dart';
import 'package:mofolasayo/utils/video_player.dart';

class Decordash extends StatefulWidget {
  const Decordash({super.key});

  @override
  State<Decordash> createState() => _DecordashState();
}

class _DecordashState extends State<Decordash> with TickerProviderStateMixin {
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
        title: Text('Malltiverse'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.transparent,
            height: 500,
            width: ScreenSizer.deviceWidth(context) * 0.25,
            child: const VideoPlayerScreen(
              videoUrl: 'assets/videos/newDecorDash.mp4',
            ),
          ),
          Container(
            //color: Colors.red,
            width: ScreenSizer.deviceWidth(context) * 0.6,
            child: Bio(
              visible: visible,
              widget: DecorDashText(),
            ),
          )
        ],
      )),
    );
  }
}

class DecorDashText extends StatelessWidget {
  const DecorDashText({
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
                "DecorDash is a Flutter-based mobile application designed for browsing and purchasing furniture, developed as part of the HNG stage 2 task. The app offers a seamless and user-friendly interface that allows users to explore various categories of furniture, add items to their cart, and proceed to checkout for purchase."),
            Text('Features',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Browse Product:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'Users can browse a wide range of furniture items categorized into different types, such as chairs, tables, sofas, and beds. This organized structure makes it easy for users to find the specific type of furniture they are looking for.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Product Details:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    "By clicking on a product, users can view detailed information, including images, title, description, and price. This feature ensures that users have all the necessary details before making a purchase decision."),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Add to Cart:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'Users can add their selected furniture items to a cart. This feature allows them to compile a list of desired items before proceeding to checkout.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Cart Management:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The cart management feature enables users to view all the items they have added to their cart. Users can also remove items from the cart if they change their mind, ensuring flexibility in the shopping process.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Checkout:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'Once users are satisfied with the items in their cart, they can proceed to checkout to finalize their purchase. This feature completes the shopping experience, taking users through the final steps of the transaction.'),
              ],
            ),
            Text('Key Widgets',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Text(
                '• HomePage: This widget displays the main interface of the app, including product categories and navigation options. It serves as the starting point for users as they begin exploring the furniture items available in the app.'),
            Text(
                " • Products Page: The ProductsPage lists all the products available in a selected category. It provides an organized view of the items, allowing users to easily browse through the different options."),
            Text(
                '• CartScreen: The CartScreen displays the items that have been added to the cart. It provides options for managing the cart, such as removing items and proceeding to checkout.'),
            Text('Target Users',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Text(
                '• Shoppers: Individuals looking for a convenient and efficient mobile shopping experience.'),
            Text(
                '• Retailers: Businesses wanting to provide their products through a mobile platform with a user-friendly interface.'),
            Text(
                '• Administrators: Those responsible for managing product data and ensuring a smooth shopping experience for users.'),
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
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),

    );
  }
}



