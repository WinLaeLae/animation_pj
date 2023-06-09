import 'dart:async';
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
  double fourl = 0;
  double fivel = 0;
  double sixl = 0;
  double sevenl = 0;
  double eightl = 0;
  double img1width = 80;
  double img1height = 120;
  double img2width = 80;
  double img2height = 150;
  double img4width = 80;
  double img4height = 120;
  double img5width = 100;
  double img5height = 100;
  double font = 30;
  double manwidth = 80;
  double manheight = 140;
  double raing = 50;
  double girlwidth = 80;
  double girlheight = 140;
  double manl = 70;
  double girll = 130;

  final random = Random();
  double op = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        oneL = 22; //random.nextInt(30).toDouble();
        twol = 28; //random.nextInt(40).toDouble();
        fourl = 25;
        fivel = 60;
        sixl = 190;
        sevenl = 80;
        eightl = 70;
        img5height = 150;
        img5width = 150;
        manheight = 150;
        manwidth = 100;
        girlheight = 140;
        girlwidth = 100;
        manl = 80;
        raing = 80;
        girll = 150;
        op = 1.0;
        font = 35;
      });
    });
  }

  void play() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 251, 244),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              SizedBox(
                height: 380,
                child: Stack(
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      opacity: op,
                      child: Positioned(
                          left: fourl,
                          top: 150,
                          width: img4width,
                          height: img1height,
                          // duration: const Duration(milliseconds: 1000),
                          child: Image.asset(
                            'images/h5.png',
                            color: Colors.blue,
                          )),
                    ),
                    AnimatedPositioned(
                        left: oneL,
                        width: img1width,
                        top: 40,
                        height: img1height,
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/h1.png'))),
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
                                  image: AssetImage('images/h2.png'))),
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
                                  image: AssetImage('images/h3.png'))),
                        )),
                    AnimatedPositioned(
                        right: fivel,
                        top: 120,
                        width: img4width,
                        height: img1height,
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/h4.png'))),
                        )),
                    AnimatedPositioned(
                        right: sixl,
                        top: 170,
                        width: img4width,
                        height: img1height,
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/h5.png'))),
                        )),
                    AnimatedPositioned(
                        left: fourl,
                        top: 130,
                        width: img4width,
                        height: img1height,
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/h5.png'))),
                        )),
                    AnimatedPositioned(
                        left: sevenl,
                        top: 230,
                        width: img4width,
                        height: img1height,
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/h7.png'))),
                        )),
                    Positioned(
                        left: 180,
                        top: 250,
                        width: img1width,
                        height: img1height,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/h8.png'))),
                        )),
                    AnimatedPositioned(
                        right: eightl,
                        top: 230,
                        width: img4width,
                        height: img1height,
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/h5.png'))),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                        left: manl,
                        width: manwidth,
                        top: 120,
                        height: manheight,
                        duration: const Duration(milliseconds: 1500),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/man.png'))),
                        )),
                    AnimatedPositioned(
                        top: 90,
                        left: 160,
                        width: raing,
                        height: raing,
                        duration: const Duration(milliseconds: 1500),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/raing.png'))),
                        )),
                    AnimatedPositioned(
                        right: girll,
                        top: 0,
                        width: girlwidth,
                        height: girlheight,
                        duration: const Duration(milliseconds: 1500),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/girl.png'))),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
