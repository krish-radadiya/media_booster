import 'package:flutter/material.dart';
import '../../../../compontas/music.dart';
import '../../../../compontas/video.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Widget> tablist = [
    Music(),
    Video(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Media Booster",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.white,
            dividerColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Audio",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                icon: Icon(
                  Icons.audio_file,
                ),
              ),
              Tab(
                child: Text(
                  "Video",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                icon: Icon(
                  Icons.video_camera_back,
                  color: Colors.white,
                ),
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
