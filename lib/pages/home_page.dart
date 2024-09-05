import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mofolasayo/pages/about_page.dart';
import 'package:mofolasayo/pages/contact_page.dart';
import 'package:mofolasayo/pages/experience_page.dart';
import 'package:mofolasayo/pages/projects_page.dart';
import 'package:mofolasayo/pages/skills_page.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    const AboutPage(),
    const SkillsPage(),
    const ProjectsPage(),
    const ExpereiencePage(),
    const ContactPage()
  ];
  final pageController = PageController(initialPage: 0);
  int selectedIndex = 0;

  final itemScrollController = ItemScrollController();

  final itemPositionsListener = ItemPositionsListener.create();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  InkWell menuItem({
    required int toPage,
    required String title,
    required bool isSelected,
    required Null Function() onTap,
  }) {
    return InkWell(
      onTap: () => onTap(),
      child: Text(
        title,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: toPage == selectedIndex
                ? ScreenSizer.isMobile(context)
                    ? 15.sp * 1.2
                    : 14 * 1.2
                : 14,
            fontWeight:
                toPage == selectedIndex ? FontWeight.bold : FontWeight.w400,
            color: isSelected ? MyColors.grey600 : MyColors.grey700,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const itemCount = 5;
    var deviceWidth = MediaQuery.of(context).size.width;
    print('device WIdth is $deviceWidth');

    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0),
            child: Text(
              'Mofolasayo',
              style: MyTextStyle.regular(color: MyColors.grey600, fontSize: 15),
            ),
          ),
          title: ScreenSizer.isMobile(context) ||
                  ScreenSizer.isBigMobile(context)
              ? const SizedBox()
              : Text(
                  'Mobile Application Developer',
                  style:
                      MyTextStyle.bold(color: MyColors.grey600, fontSize: 18),
                ),
          actions: [
            ScreenSizer.isMobile(context) ||
                    ScreenSizer.isBigMobile(context) ||
                    ScreenSizer.isSmallTablet(context)
                ? Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                  )
                : SizedBox(
                    width: ScreenSizer.deviceWidth(context) * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < itemCount; i++)
                          menuItem(
                              toPage: i,
                              title: [
                                'Home',
                                'Tools',
                                'Projects',
                                'Experience',
                                'Contacts',
                              ][i],
                              isSelected: selectedIndex == i,
                              onTap: () {
                                setState(() {
                                  selectedIndex = i;
                                });
                                itemScrollController.scrollTo(
                                    index: i,
                                    duration: const Duration(seconds: 2),
                                    curve: Curves.easeInOut);
                              })
                      ],
                    ),
                  ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.toggle_on),
            )
          ],
          leadingWidth: 200,
        ),
        drawer: ScreenSizer.isBigMobile(context) ||
                ScreenSizer.isMobile(context) ||
                ScreenSizer.isSmallTablet(context)
            ? Drawer(
                backgroundColor: MyColors.grey1000,
                width: ScreenSizer.isMobile(context)
                    ? deviceWidth * 0.5
                    : deviceWidth * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //padding: EdgeInsets.zero,
                  children: [
                    for (int i = 0; i < itemCount; i++)
                      menuItem(
                          toPage: i,
                          title: [
                            'Home',
                            'Tools',
                            'Projects',
                            'Experience',
                            'Contacts',
                          ][i],
                          isSelected: selectedIndex == i,
                          onTap: () {
                            setState(() {
                              selectedIndex = i;
                            });
                            itemScrollController.scrollTo(
                                index: i,
                                duration: const Duration(seconds: 2),
                                curve: Curves.easeInOut);
                            Navigator.pop(context);
                          }),
                    Container(
                      // color: Colors.yellow,
                      width: deviceWidth * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          /*InkWell(
                              onTap: () {
                                //launchURL('https://x.com/moe_thetechgirl/');
                              },
                              child: SvgPicture.string(xIcon)),
                          InkWell(
                              onTap: () {
                               // launchURL('https://github.com/Mofolasayo/');
                              },
                              child: SvgPicture.string(github)),
                          InkWell(
                              onTap: () {
                                launchURL(
                                    'https://www.linkedin.com/in/mofolasayo-osikoya-b53a832a0/');
                              },
                              child: SvgPicture.string(linkedIn)),
                          SvgPicture.string(figma)*/
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: ScrollablePositionedList.builder(
            initialScrollIndex: 0,
            shrinkWrap: true,
            itemPositionsListener: itemPositionsListener,
            itemScrollController: itemScrollController,
            itemCount: pages.length,
            itemBuilder: (context, index) {
              final page = pages[index];

              return page;
            },
          ),
        ));
  }
}
/*Text(
                        'Home',
                        style: MyTextStyle.regular(
                            color: MyColors.grey600, fontSize: 15),
                      ),
                      Text(
                        'Projects',
                        style: MyTextStyle.regular(
                            color: MyColors.grey600, fontSize: 15),
                      ),
                      Text(
                        'Contacts',
                        style: MyTextStyle.regular(
                            color: MyColors.grey600, fontSize: 15),
                      ),*/
