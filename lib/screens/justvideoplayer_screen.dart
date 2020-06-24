import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class JustVideoPlayer extends StatefulWidget {
  static const String id = 'justvideoplayer_screen';
  
  @override
  JustVideoPlayerState createState() => JustVideoPlayerState();
}

class JustVideoPlayerState extends State<JustVideoPlayer> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bee Video'),
      ),
      body: Column(
        children: [
          SizedBox(height: 35,),
          FlatButton(
            child: Row(
              children: [
                Text('BEE VIDEO'),
                Icon(Icons.play_circle_filled, size: 60, color: Colors.red,),
              ],
            ),
            onPressed: (){
              createVideo();
              playerController.play();
            } ,
          ),
          Container(
            color: Colors.amber,
              child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    child: (playerController != null
                        ? VideoPlayer(
                      playerController,
                    )
                        : Container()),
                  )
              ),
          ),
        ],
      ),

    );
  }
}

//floatingActionButton: FloatingActionButton(
//onPressed: () {
//createVideo();
//playerController.play();
//},
//child: Icon(Icons.play_arrow),
//),