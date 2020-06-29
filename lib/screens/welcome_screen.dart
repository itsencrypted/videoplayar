import 'package:flutter/material.dart';
import 'package:videoplayar/screens/chewiedemo_screen.dart';
import 'package:videoplayar/screens/justvideoplayer_screen.dart';
import 'package:videoplayar/screens/videoplayarlist_screen.dart';
import 'package:videoplayar/screens/videoplayer_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'project-logo',
              child: Center(
                child: Container(
                  child: Image.network('https://raw.githubusercontent.com/itsencrypted/itsencrypted_API/master/images/Logo-main.png'),
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
              ),
            ),
            SizedBox(height: 25,),
            FlatButton(
              color: Colors.amber,
              child: Text('VideoPlayer Demo - Not working'),
              onPressed: (){Navigator.pushNamed(context, VideoPlayerScreen.id);},
            ),
            SizedBox(height: 25,),
            FlatButton(
              color: Colors.deepOrangeAccent,
              child: Text('VideoPlayar Demo2'),
              onPressed: (){Navigator.pushNamed(context, JustVideoPlayer.id);},
            ),
            SizedBox(height: 25,),
            FlatButton(
              color: Colors.pinkAccent,
              child: Text('VideoPlayar Demo3'),
              onPressed: (){Navigator.pushNamed(context, ChewieDemoScreen.id);},
            ),
            SizedBox(height: 25,),
            FlatButton(
              color: Colors.greenAccent,
              child: Text('VideoPlayar Demo4 - this one'),
              onPressed: (){Navigator.pushNamed(context, VideoPlayarListScreen.id);},
            ),
          ]
      ),
    );
  }
}
