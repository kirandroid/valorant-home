import 'package:flutter/material.dart';
import 'package:valorant_home/extension/extensions.dart';
import 'package:valorant_home/widgets/play_button_clipper.dart';

import 'bottom_nav_widget.dart';

Widget homeBottomBar() {
  return Stack(
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
                      buttonTitle: 'BATTLEPASS', showProgressBar: true),
                  bottomNavbutton(buttonTitle: 'AGENTS', showProgressBar: true),
                  bottomNavbutton(buttonTitle: 'CAREER'),
                  bottomNavbutton(buttonTitle: 'COLLECTION', showBorder: false),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10, left: 15),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.tealAccent,
                      spreadRadius: 0,
                      blurRadius: 70,
                      offset: Offset(0, 0), // changes position of shadow
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
                                  offset: Offset(
                                      0, 2), // changes position of shadow
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