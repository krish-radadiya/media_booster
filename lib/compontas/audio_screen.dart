import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioP extends StatefulWidget {
  AudioP({super.key});

  @override
  State<AudioP> createState() => _AudioPState();
}

class _AudioPState extends State<AudioP> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  playAudio() {
    assetsAudioPlayer.open(
      Audio.network(
        "https://file-examples.com/storage/fe444bc7be658b44e9c7550/2017/11/file_example_MP3_700KB.mp3",
      ),
    );
  }

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    playAudio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: () {
              assetsAudioPlayer.play();
            },
            child: Icon(Icons.play_arrow),
          ),
          FloatingActionButton(
            onPressed: () {
              assetsAudioPlayer.pause();
            },
            child: Icon(Icons.pause),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: assetsAudioPlayer.currentPosition,
        builder: (ctx, snapshot) {
          return Center(
            child: Text("${snapshot.data?.inMinutes}:"
                "${snapshot.data?.inSeconds}:"
                "${snapshot.data?.inMilliseconds}"),
          );
        },
      ),
    );
  }
}
