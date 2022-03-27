import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:valorant_home/extension/extensions.dart';
import 'package:valorant_home/widgets/radianite_point.dart';

import 'valorant_point.dart';

Widget homeHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
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
            pointWidget(points: '4356', customPainter: ValorantPoint()),
            20.horizontalSpace,
            pointWidget(points: '242', customPainter: RadianitePoint()),
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
