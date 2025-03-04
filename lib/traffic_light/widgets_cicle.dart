import 'package:flutter/material.dart';

class TrafficLightCircle extends StatelessWidget {
  final Color color;
  const TrafficLightCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color.withOpacity(0.7),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
    );
  }
}
