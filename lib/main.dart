import 'package:flutter/material.dart';

import 'screens/videoplayer_screen.dart';
import 'screens/welcome_screen.dart';

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
        VideoPlayerScreen.id: (context) => VideoPlayerScreen()
      }
    );
  }
}
