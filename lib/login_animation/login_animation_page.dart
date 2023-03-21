import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class LoginAnimationPage extends StatefulWidget {
  const LoginAnimationPage({super.key});

  @override
  State<LoginAnimationPage> createState() => _LoginAnimationPageState();
}

class _LoginAnimationPageState extends State<LoginAnimationPage> {
  double oneL = 15;
  double twol = 15;
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        oneL = 22; //random.nextInt(30).toDouble();
        twol = 28; //random.nextInt(40).toDouble();
        fourl = 25;
        img5height = 150;
        img5width = 150;
        font = 35;
        //  sleep(const Duration(seconds: 2));
        // resize();
        //random.nextInt(30).toDouble();
      });
    });
    //await Future.delayed(const Duration(seconds: 10);
  }

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
        backgroundColor: const Color(0xffFDD8C3),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/bg.png'),
                          fit: BoxFit.fill)),
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
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 252, 166, 116),
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
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
                  child:
                      const Image(image: AssetImage("images/image_five.png")),
                ),
                AnimatedOpacity(
                  opacity: op,
                  duration: const Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(247, 254, 230, 203),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, .2),
                                    blurRadius: 20.0,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromARGB(
                                                255, 254, 128, 55)))),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 252, 166, 116))),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 252, 166, 116))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: resize,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 254, 128, 55),
                                  Color.fromARGB(255, 250, 184, 145),
                                ])),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
