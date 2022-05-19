import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFc9E9FC),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFc9E9FC).withOpacity(0.5),
            blurRadius: 7,
            spreadRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
    );
  }
}
