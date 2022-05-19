import 'package:flutter/material.dart';

class Sun extends StatelessWidget {
  const Sun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 160,
      child: SunShine(
        radius: 120,
        child: SunShine(
          radius: 80,
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 235, 33, 104),
                  Color(0xFFF3CB80),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SunShine extends StatelessWidget {
  const SunShine({Key? key, required this.radius, required this.child})
      : super(key: key);

  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1),
      ),
      child: Center(child: child),
    );
  }
}
