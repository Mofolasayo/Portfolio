import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/video_player.dart';

class Meditag extends StatelessWidget {
  const Meditag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
          child: VideoPlayerScreen(
              videoUrl:
                  'https://player.vimeo.com/external/490881499.sd.mp4?s=414613a701f3c392a3e8c4d4bdd3489978c54ff3&profile_id=165&oauth2_token_id=57447761')),
    );
  }
}
