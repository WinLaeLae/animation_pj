import 'dart:math';

import 'package:flutter/material.dart';

class ProposeAnimationPage extends StatefulWidget {
  const ProposeAnimationPage({super.key});

  @override
  State<ProposeAnimationPage> createState() => _ProposeAnimationPageState();
}

class _ProposeAnimationPageState extends State<ProposeAnimationPage> {
  double oneL = 0;
  double twol = 0;
  double fourl = 15;
  double img1width = 80;
  double img1height = 120;
  double img2width = 80;
  double img2height = 150;
  double img4width = 80;
  double img4height = 120;
  double img5width = 100;
  double img5height = 100;
  double font = 30;
  final random = Random();
  double op = 1.0;
  void resize() {
    setState(() {
      img5width = 270;
      img1height = 160;
      img1width = 100;
      img2width = 120;
      img2height = 200;
      img4height = 100;
      img4width = 160;
      img5height = 270;
      font = 40;
      op = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 251, 244),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                          left: oneL,
                          width: img1width,
                          top: 40,
                          height: img1height,
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/image_one.png'))),
                          )),
                      AnimatedPositioned(
                          top: twol,
                          left: 120,
                          width: img2height,
                          height: img2height,
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/image_two.png'))),
                          )),
                      AnimatedPositioned(
                          right: fourl,
                          top: 40,
                          width: img4width,
                          height: img1height,
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/image_four.png'))),
                          )),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 1000),
                        child: AnimatedOpacity(
                          opacity: op,
                          duration: const Duration(seconds: 2),
                          child: Container(
                            margin: const EdgeInsets.only(top: 100),
                            child: Center(
                                child: Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/raing.png'))),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                  height: img5height,
                  width: img5width,
                  duration: const Duration(milliseconds: 1000),
                  child: const Image(image: AssetImage("images/girl.png")),
                ),
              ],
            ),
          ),
        ));
  }
}
