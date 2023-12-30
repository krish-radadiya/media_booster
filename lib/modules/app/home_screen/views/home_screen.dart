import 'package:flutter/material.dart';
import '../../../../compontas/audio_screen.dart';
import '../../../../compontas/carosal_slider_screen.dart';
import '../../../../compontas/video_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Widget> tablist = [
    AudioP(),
    const Video(),
    const Carousel(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
// backgroundColor: Colors.teal,
          title: const Text("Media Booster"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Audio"),
                icon: Icon(Icons.audio_file),
              ),
              Tab(
                child: Text("Video"),
                icon: Icon(Icons.video_camera_back),
              ),
              Tab(
                child: Text("Carousel"),
                icon: Icon(Icons.view_carousel),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: tablist,
        ),
      ),
    );
  }
}
