import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'extension/extensions.dart';
import 'widgets/valorant_point.dart';

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
    _controller.addListener(() {
      setState(() {});
    });
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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://avatarfiles.alphacoders.com/315/315011.jpg'),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          10.horizontalSpace,
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/account.svg',
                                    height: 15,
                                    color: Colors.white,
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth: 8,
                                        minHeight: 8,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          10.horizontalSpace,
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                Icons.mic_outlined,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          pointWidget(points: '4356'),
                          20.horizontalSpace,
                          pointWidget(points: '242'),
                          50.horizontalSpace,
                          Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/notification.svg',
                                height: 20,
                                color: Colors.white,
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  constraints: const BoxConstraints(
                                    minWidth: 10,
                                    minHeight: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          20.horizontalSpace,
                          const Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          20.horizontalSpace,
                          const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          20.horizontalSpace,
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.wifi,
                                size: 15,
                                color: Colors.white,
                              ),
                              SvgPicture.asset(
                                'assets/icons/battery.svg',
                                height: 18,
                                color: Colors.greenAccent,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          4,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://avatarfiles.alphacoders.com/315/315011.jpg'),
                                ),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 250,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/Magepunk.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(color: Colors.white),
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 0,
                                    left: 5,
                                    child: Text(
                                      'FEATURED',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              width: 250,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'FEATURED MODES',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 14,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  5.verticalSpace,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        constraints: const BoxConstraints(
                                          minHeight: 30,
                                          minWidth: 30,
                                        ),
                                        color: Colors.white.withOpacity(0.3),
                                        child: const Icon(
                                          Icons.ac_unit,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        constraints: const BoxConstraints(
                                          minHeight: 30,
                                        ),
                                        alignment: Alignment.center,
                                        color: Colors.white.withOpacity(0.1),
                                        child: const Text(
                                          'SNOWBALL FIGHT',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        constraints: const BoxConstraints(
                                          minHeight: 30,
                                        ),
                                        alignment: Alignment.center,
                                        color: Colors.black45,
                                        child: const Text(
                                          '5-7 Mins',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.green,
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row pointWidget({required String points}) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: CustomPaint(
              size: Size(12, (12 * 1).toDouble()),
              painter: ValorantPoint(),
            ),
          ),
        ),
        2.horizontalSpace,
        Text(
          points,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
