import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/bio.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';
import 'package:mofolasayo/utils/skills.dart';
import 'package:mofolasayo/utils/video_player.dart';

class Angrybird extends StatefulWidget {
  const Angrybird({super.key});

  @override
  State<Angrybird> createState() => _AngrybirdState();
}

class _AngrybirdState extends State<Angrybird> with TickerProviderStateMixin {
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
          SizedBox(
            //color: Colors.red,
            width: ScreenSizer.deviceWidth(context) * 0.6,
            child: Bio(
              visible: visible,
              widget: const AngryBirdText(),
            ),
          )
        ],
      )),
    );
  }
}

class AngryBirdText extends StatelessWidget {
  const AngryBirdText({
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
            Text(
                "This project is an Angry Birds-like game developed using Flutter, leveraging the Flame engine and Forge2D for physics simulation. The game is designed to provide an engaging and interactive experience similar to the popular Angry Birds series, where players use a slingshot to launch projectiles at obstacles and pigs, aiming to knock them down and clear levels."),
            Text('Core Features',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Slingshot-like Mechanism:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The primary interaction in the game involves a slingshot mechanism where players can drag and release to launch a projectile. The accuracy and power of the shot are determined by how the player manipulates the slingshot, creating a satisfying and skill-based gameplay experience.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Obstacles:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    "The game world is populated with various obstacles that players must navigate or destroy to reach the pigs. These obstacles add complexity and challenge to each level, requiring players to think strategically about their shots."),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Collision Detection:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The game employs robust collision detection to determine when pigs or obstacles are hit. When a pig falls to the ground or an obstacle is destroyed, the game state changes accordingly, contributing to the overall gameplay dynamics.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Game Overlays:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The game includes overlays that handle different game states, such as \'Game Won\' and \'Game Lost.\' These overlays provide feedback to the player, enhancing the gaming experience by clearly communicating the outcome of each level.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Score System:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'Players earn points based on their performance, particularly by successfully knocking pigs to the ground. The score system adds a competitive element to the game, encouraging players to improve their skills and achieve higher scores.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Level Progression:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The game features multiple levels, with players advancing to the next level upon successfully completing the current one. Each level presents new challenges and obstacles, keeping the gameplay fresh and engaging.'),
              ],
            ),
            Text('Technical Details',
                style: MyTextStyle.semiBold(
                    fontSize: 18, color: MyColors.grey600)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Collision Detection and Physics:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'Using Forge2D, the game simulates realistic physics, ensuring that the interactions between projectiles, obstacles, and pigs behave in a believable manner. This adds to the immersive experience of the game.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Game State Management:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The game manages different states such as active gameplay, game won, and game lost using overlays. This ensures that the transition between different stages of the game is smooth and intuitive.'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Audio Integration:',
                    style: MyTextStyle.regular(
                        fontSize: 18, color: MyColors.grey600)),
                Text(
                    'The game uses the flame_audio package to incorporate sound effects that enhance the overall experience. Sounds for launching, collisions, and game state changes provide feedback to the player, making the game more engaging.'),
              ],
            ),
            SizedBox(
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
                    text: 'Flame',
                  ),
                  Skills(
                    text: 'Forge2d',
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
