import 'package:flutter/material.dart';
import 'package:mofolasayo/screens/angrybird.dart';
import 'package:mofolasayo/screens/calculator.dart';
import 'package:mofolasayo/screens/decorDash.dart';
import 'package:mofolasayo/screens/malltiverse.dart';
import 'package:mofolasayo/screens/meditag.dart';
import 'package:mofolasayo/screens/portifolio.dart';
import 'package:mofolasayo/screens/quizapp.dart';
import 'package:mofolasayo/screens/sizzle.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //height: 1200,
        color: MyColors.greyIcon,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 40, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Projects',
                style:
                    MyTextStyle.medium(fontSize: 22, color: MyColors.grey500),

                //  style: MyTextStyle.bold(fontSize: 30, color: MyColors.grey500),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectContainer(
                          imageUrl: 'assets/images/meditag.png',
                          name: 'MediTag',
                          detail: 'NFC Mobile App',
                          widget: Meditag(),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ProjectContainer(
                          imageUrl: 'assets/images/malltiverse.png',
                          name: 'Malltiverse',
                          detail: 'Ecommerce Mobile App',
                          widget: Malltiverse(),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ProjectContainer(
                          imageUrl: 'assets/images/decordash2.png',
                          name: 'DecorDash',
                          detail: 'Furniture Shopping App',
                          widget: Decordash(),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ProjectContainer(
                            imageUrl: 'assets/images/angrybird.png',
                            name: 'Angry Bird',
                            detail: 'Mobile Game App',
                            widget: Angrybird()),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectContainer(
                          imageUrl: 'assets/images/quizApp.png',
                          name: 'Quiz App',
                          detail: 'Simple Quiz App',
                          widget: Quizapp(),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ProjectContainer(
                          imageUrl: 'assets/images/sizzle.jpg',
                          name: 'Sizzle',
                          detail: 'Simple Recipe App',
                          widget: Sizzle(),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ProjectContainer(
                          imageUrl: 'assets/images/calculator.png',
                          name: 'Calculator',
                          detail: 'Simple Calculator App',
                          widget: Calculator(),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ProjectContainer(
                          imageUrl: 'assets/images/meditag.png',
                          name: 'Personal Portfolio',
                          detail: 'Portfolio Website',
                          widget: Portifolio(),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                      
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.detail,
    required this.widget,
  });
  final String imageUrl;
  final String name;
  final String detail;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Container(
        //color: Colors.red,
        height: 410,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                //borderRadius: BorderRadius.circular(50),

                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.cover),
              ),
            ),
            Text(
              name,
              style: MyTextStyle.medium(fontSize: 18, color: MyColors.grey600),
            ),
            Text(detail)
          ],
        ),
      ),
    );
  }
}
