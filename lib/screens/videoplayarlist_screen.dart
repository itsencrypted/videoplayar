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
          VideoPlayarItem(
              videoPlayerController: VideoPlayerController.asset
                ('assets/videos/AppDemo01_studylist.mp4'),
          looping: true,
          ),
          VideoPlayarItem(
            videoPlayerController: VideoPlayerController.network
              (''),
          ),
//          VideoPlayarItem(
//            videoPlayerController: VideoPlayerController.network
//              (''),
//          ),
        ],
      ),
    );
  }
}
