import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayar/model/videoplayar_list.dart';

class VideoPlayarListScreen extends StatelessWidget {
  static const String id = 'videoplayarlist_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VideoPlayar List by It\'s Encrypted!'
      ),),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Row(
                children: [
                  Text('App Demo', style: TextStyle(fontWeight: FontWeight
                      .bold, fontSize: 50),),
                  Text('Study List - a To Do list application that saves '
                      'states and updates the number of items to be completed'
                      '.', style: TextStyle(
                  fontSize: 20),)
                ],
              ),
              Row(
                children: [
                  VideoPlayarItem(
                    videoPlayerController: VideoPlayerController.asset('assets/videos/demo01.mp4'),
                    looping: false,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              VideoPlayarItem(
                videoPlayerController: VideoPlayerController.asset
                  ('assets/videos/demo02.mp4'),
                looping: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
