// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class Video extends StatefulWidget {
//   const Video({super.key});
//
//   @override
//   State<Video> createState() => _VideoState();
// }
//
// class _VideoState extends State<Video> {
//   late VideoPlayerController videoPlayerController;
//   late ChewieController chewieController;
//
//   @override
//   void initState() {
// // TODO: implement initState
//     super.initState();
//     videoPlayerController = VideoPlayerController.networkUrl(
//         Uri.parse("https://samplelib.com/lib/preview/mp4/sample-5s.mp4"))
//       ..initialize().then((value) {
//         setState(() {});
//       });
//     chewieController = ChewieController(
//       videoPlayerController: videoPlayerController,
//       autoInitialize: true,
//       autoPlay: true,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Chewie(
//       controller: chewieController,
//     ));
//   }
// }
import 'package:flutter/material.dart';
import '../utils/video_utils.dart';
import 'videp_screen.dart';

void main() {
  runApp(const Video());
}

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: Videolist.map(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Video_page(
                        Name: e['Vname'],
                        video: e['Video'],
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 200,
                  width: 350,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    image: DecorationImage(
                      image: AssetImage(
                        e['VImage'],
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.play_circle_filled,
                    color: Colors.white.withOpacity(0.7),
                    size: 50,
                  ),
                ),
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
