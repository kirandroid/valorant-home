import 'package:flutter/material.dart';
import 'package:valorant_home/extension/extensions.dart';

Widget homeBody() {
  return Padding(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
  );
}
