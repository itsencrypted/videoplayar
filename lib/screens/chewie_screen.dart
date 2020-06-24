import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:videoplayar/model/episodio.dart';



class PlayerPage extends StatelessWidget {

  final Episodio episodio;

  const PlayerPage({Key key, this.episodio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("${episodio.nomePortugues}"),
      ),
      body: Column(
        children: <Widget>[
//          Chewie(
////            new VideoPlayerController.network('${episodio.link}'),
//
//            controller: VideoPlayerController.network('https://www.youtube.com/watch?v=Nw1hmd0yzAo'),
//            aspectRatio: 3 / 2,
//            autoPlay: true,
//            looping: true,
//          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "Episódio: ${episodio.episodio}",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "${episodio.nomePortugues}",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "${episodio.nomeJapones}",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "${episodio.dataLancamento}",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}




