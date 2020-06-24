import 'package:flutter/material.dart';
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
              child: Container(
                child: Image.network('https://raw.githubusercontent.com/itsencrypted/itsencrypted_API/master/images/Logo-main.png'),
                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ),
            SizedBox(height: 25,),
            FlatButton(
              child: Text('Enter'),
              onPressed: (){Navigator.pushNamed(context, VideoPlayerScreen.id);},
            )
          ]
      ),
    );
  }
}
