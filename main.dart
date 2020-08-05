import 'package:TASK1/page1.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

void onPlayAudio() async {
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/song1.mp3"),
    showNotification: true,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rahul AudioVideo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(' AudioVideoPlayer'),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                  'assets/video1.mp4',
                ),
                looping: true,
              ),
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                  'assets/video2.mp4',
                ),
                looping: true,
              ),
              RaisedButton(
                textTheme: ButtonTextTheme.accent,
                color: Colors.amber,
                textColor: Colors.black,
                hoverColor: Colors.green,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Text('Play The Song'),
                onPressed: onPlayAudio,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
