import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valorant_home/widgets/radianite_point.dart';
import 'package:video_player/video_player.dart';
import 'extension/extensions.dart';
import 'widgets/bottom_nav_widget.dart';
import 'widgets/play_button_clipper.dart';
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
                          pointWidget(
                              points: '4356', customPainter: ValorantPoint()),
                          20.horizontalSpace,
                          pointWidget(
                              points: '242', customPainter: RadianitePoint()),
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
              30.verticalSpace,
              Container(
                height: 70,
                padding: const EdgeInsets.only(right: 50),
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CustomPaint(
                      foregroundPainter: BottomNavWidget(),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Row(
                            children: [
                              bottomNavbutton(buttonTitle: 'HOME'),
                              bottomNavbutton(
                                  buttonTitle: 'BATTLEPASS',
                                  showProgressBar: true),
                              bottomNavbutton(
                                  buttonTitle: 'AGENTS', showProgressBar: true),
                              bottomNavbutton(buttonTitle: 'CAREER'),
                              bottomNavbutton(
                                  buttonTitle: 'COLLECTION', showBorder: false),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 15),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.tealAccent,
                                  spreadRadius: 0,
                                  blurRadius: 70,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ClipPath(
                              clipper: PlayButtonClipper(),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 50),
                                    decoration: const BoxDecoration(
                                      color: Colors.tealAccent,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'PLAY',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                          letterSpacing: 3,
                                          fontSize: 35,
                                          shadows: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              spreadRadius: 10,
                                              blurRadius: 8,
                                              offset: Offset(0,
                                                  2), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 25,
                                    top: 5,
                                    child: Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 5,
                                    bottom: 5,
                                    child: Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 80,
                                    bottom: 5,
                                    child: Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomNavbutton({
    required String buttonTitle,
    bool showBorder = true,
    bool showProgressBar = false,
  }) {
    return Flexible(
      flex: 1,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            _controller.pause();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  showProgressBar
                      ? Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          constraints: const BoxConstraints(minHeight: 6),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              color: Colors.tealAccent,
                              backgroundColor: Colors.grey,
                              value: 0.7,
                            ),
                          ),
                        )
                      : 6.verticalSpace,
                  5.verticalSpace,
                  Text(
                    buttonTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  right: showBorder
                      ? const BorderSide(color: Colors.white)
                      : BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row pointWidget(
      {required String points, required CustomPainter customPainter}) {
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
              painter: customPainter,
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
