import 'package:flutter/material.dart';

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

  static const _duration = 2;
  double factor = 1;
  @override
  void initState() {
    super.initState();
    _play(1);
  }

  void _play(double factor) {
    controller1.repeat(
      min: 0,
      max: 1,
      period: Duration(seconds: (_duration / factor).ceil()),
    );
    controller2.repeat(
      min: 0,
      max: 1,
      period: Duration(seconds: ((_duration * 1.5) / factor).ceil()),
    );
    controller3.repeat(
      min: 0,
      max: 1,
      period: Duration(seconds: ((_duration * 2) / factor).ceil()),
    );
    controller4.repeat(
      min: 0,
      max: 1,
      period: Duration(seconds: ((_duration * 2.5) / factor).ceil()),
    );
    controller5.repeat(
      min: 0,
      max: 1,
      period: Duration(seconds: ((_duration * 3.5) / factor).ceil()),
    );
    controller6.repeat(
      min: 0,
      max: 1,
      period: Duration(seconds: ((_duration * 4.5) / factor).ceil()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/stars_space_darkness_night_black_sky_background_hd_space-2560x1440.jpg'), fit: BoxFit.fill),
        ),
        child: InteractiveViewer(
          maxScale: 8,
          minScale: .01,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  width: 300,
                  child: Slider(
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                    min: 1,
                    max: 5000,
                    value: factor,
                    onChanged: (value) {
                      factor = value;
                      setState(() {});
                      _play(value);
                    },
                  ),
                ),
              ),
              const Center(
                child: _Planet(
                  color: Colors.red,
                  radius: 50,
                ),
              ),
              _AnimatedPlanet(
                controller: controller1,
                distanceFromSun: 300,
                planetRadius: 15,
                planetColor: Colors.blue,
              ),
              _AnimatedPlanet(
                controller: controller2,
                distanceFromSun: 400,
                planetRadius: 15,
                planetColor: Colors.pink,
              ),
              _AnimatedPlanet(
                controller: controller3,
                distanceFromSun: 500,
                planetRadius: 15,
                planetColor: Colors.green,
              ),
              _AnimatedPlanet(
                controller: controller4,
                distanceFromSun: 600,
                planetRadius: 15,
                planetColor: Colors.indigo,
              ),
              _AnimatedPlanet(
                controller: controller5,
                distanceFromSun: 700,
                planetRadius: 15,
                planetColor: Colors.cyan,
              ),
              _AnimatedPlanet(
                controller: controller6,
                distanceFromSun: 800,
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
    required this.radius,
    required this.color,
  });
  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _Orbit extends StatelessWidget {
  const _Orbit({required this.distanceFromSun});
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
              distanceFromSun: distanceFromSun - (planetRadius * 2),
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
