import 'package:flutter/material.dart';
import 'package:videoplayar/screens/chewiedemo_screen.dart';
import 'package:videoplayar/screens/justvideoplayer_screen.dart';
import 'package:videoplayar/screens/videoplayarlist_screen.dart';

import 'screens/videoplayer_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/chewiedemo_screen.dart';

void main() {
  runApp(VideoPlayar());
}

class VideoPlayar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        VideoPlayerScreen.id: (context) => VideoPlayerScreen(),
        ChewieDemoScreen.id: (context) => ChewieDemoScreen(),
        JustVideoPlayer.id: (context) => JustVideoPlayer(),
        VideoPlayarListScreen.id: (context) => VideoPlayarListScreen(),
      }
    );
  }
}
