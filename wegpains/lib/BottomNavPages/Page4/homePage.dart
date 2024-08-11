import 'package:flutter/material.dart';
import '/BottomNavPages/Page4/video_player.dart';


//================================================================Youtube Video 1
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(children: [
            YoutubeVideo(
                "https://www.youtube.com/watch?v=MuyyzKAFKn4"),
          ],));

  }
}
//================================================================Youtube Video 2
