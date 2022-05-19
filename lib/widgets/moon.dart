import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
  const Moon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 179, 35, 184),
            Color.fromARGB(255, 48, 219, 224),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    );
  }
}
