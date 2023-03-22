import 'package:animation_pj/login_animation/login_animation_page.dart';
import 'package:flutter/material.dart';

import 'orbit_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const LoginAnimationPage(),
    );
  }
}
