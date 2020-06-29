import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoPlayarItem extends StatefulWidget {

  final VideoPlayerController videoPlayerController;
  final bool looping;

  VideoPlayarItem({
    @required this.videoPlayerController,
    this.looping
});

  @override
  _VideoPlayarItemState createState() => _VideoPlayarItemState();
}

class _VideoPlayarItemState extends State<VideoPlayarItem> {
  ChewieController videoPlayarController;

  @override
  void initState(){
    super.initState();

    videoPlayarController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16/9,
      autoInitialize: true,
      looping: widget.looping,
      errorBuilder: (context, errorMessage){
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.black),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Chewie(
        controller: videoPlayarController,
      ),
    );
  }

  @override
  void dispose(){
    super.dispose();
    widget.videoPlayerController.dispose();
    videoPlayarController.dispose();
  }

}
