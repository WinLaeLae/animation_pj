import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OrbitAnimation extends StatefulWidget {
  const OrbitAnimation({super.key});

  @override
  State<OrbitAnimation> createState() => _OrbitAnimationState();
}

class _OrbitAnimationState extends State<OrbitAnimation> with TickerProviderStateMixin {
  late final controller1 = AnimationController(vsync: this);
  late final controller2 = AnimationController(vsync: this);
  late final controller3 = AnimationController(vsync: this);
  late final controller4 = AnimationController(vsync: this);
  late final controller5 = AnimationController(vsync: this);
  late final controller6 = AnimationController(vsync: this);
  @override
  void initState() {
    super.initState();
    controller1.repeat(min: 0, max: 1, period: const Duration(seconds: 3));
    controller2.repeat(min: 0, max: 1, period: const Duration(seconds: 5));
    controller3.repeat(min: 0, max: 1, period: const Duration(seconds: 9));
    controller4.repeat(min: 0, max: 1, period: const Duration(seconds: 12));
    controller5.repeat(min: 0, max: 1, period: const Duration(seconds: 45));
    controller6.repeat(min: 0, max: 1, period: const Duration(seconds: 85));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/stars_space_darkness_night_black_sky_background_hd_space-2560x1440.jpg'), fit: BoxFit.fill),
        ),
        child: InteractiveViewer(
          maxScale: 8,
          minScale: .01,
          child: Stack(
            children: [
              const Center(
                child: _Planet(
                  color: Colors.red,
                  radius: 50,
                ),
              ),
              _AnimatedPlanet(
                controller: controller1,
                distanceFromSun: 200,
                planetRadius: 15,
                planetColor: Colors.blue,
              ),
              _AnimatedPlanet(
                controller: controller2,
                distanceFromSun: 300,
                planetRadius: 15,
                planetColor: Colors.pink,
              ),
              _AnimatedPlanet(
                controller: controller3,
                distanceFromSun: 400,
                planetRadius: 15,
                planetColor: Colors.green,
              ),
              _AnimatedPlanet(
                controller: controller4,
                distanceFromSun: 500,
                planetRadius: 15,
                planetColor: Colors.indigo,
              ),
              _AnimatedPlanet(
                controller: controller5,
                distanceFromSun: 600,
                planetRadius: 15,
                planetColor: Colors.cyan,
              ),
              _AnimatedPlanet(
                controller: controller6,
                distanceFromSun: 700,
                planetRadius: 15,
                planetColor: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Planet extends StatelessWidget {
  const _Planet({
    super.key,
    required this.radius,
    required this.color,
  });
  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _Orbit extends StatelessWidget {
  const _Orbit({super.key, required this.distanceFromSun});
  final double distanceFromSun;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: distanceFromSun,
      height: distanceFromSun,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
    );
  }
}

class _AnimatedPlanet extends StatelessWidget {
  const _AnimatedPlanet({
    super.key,
    required this.controller,
    required this.distanceFromSun,
    required this.planetRadius,
    required this.planetColor,
  });
  final Animation<double> controller;
  final double distanceFromSun;
  final double planetRadius;
  final Color planetColor;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Stack(
        children: [
          Center(
            child: _Orbit(
              distanceFromSun: distanceFromSun - planetRadius,
            ),
          ),
          Center(
            child: SizedBox(
              width: distanceFromSun,
              height: distanceFromSun,
              child: RotationTransition(
                turns: controller,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: _Planet(
                    color: planetColor,
                    radius: planetRadius,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
