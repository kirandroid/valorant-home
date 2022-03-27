import 'package:flutter/material.dart';
import 'package:valorant_home/widgets/home_body.dart';
import 'package:valorant_home/widgets/home_bottom_bar.dart';
import 'package:valorant_home/widgets/home_header.dart';
import 'package:video_player/video_player.dart';
import 'extension/extensions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/home_vid.mp4');
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Column(
            children: [
              Flexible(
                flex: 1,
                child: homeHeader(),
              ),
              Expanded(
                flex: 3,
                child: homeBody(),
              ),
              30.verticalSpace,
              Container(
                height: 70,
                padding: const EdgeInsets.only(right: 50),
                width: MediaQuery.of(context).size.width,
                child: homeBottomBar(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
