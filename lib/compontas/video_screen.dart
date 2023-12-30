import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        "https://file-examples.com/storage/fee4254a29658d857963fcd/2017/04/file_example_MP4_640_3MG.mp4"))
      ..initialize().then((value) {
        setState(() {});
      });
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoInitialize: true,
        autoPlay: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Chewie(
      controller: chewieController,
    ));
  }
}
