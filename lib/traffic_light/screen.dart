import 'package:flutter/material.dart';
import 'package:mytestapp/traffic_light/widgets_cicle.dart';

class TrafficLightScreen extends StatefulWidget {
  const TrafficLightScreen({super.key});

  @override
  State<TrafficLightScreen> createState() => _TrafficLightScreenState();
}

class _TrafficLightScreenState extends State<TrafficLightScreen> {
  int start_redLight = 0;

  void change_Light() {
    setState(() {
      start_redLight = (start_redLight + 1) % 3;
    });
  }

  double get_Opacity(int lightIndex) {
    return start_redLight == lightIndex ? 1.0 : 0.3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Traffic Light Animation"),
          centerTitle: true,
          backgroundColor: Colors.blue[100]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: get_Opacity(0),
              duration: const Duration(seconds: 1),
              child: TrafficLightCircle(color: Colors.red),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              opacity: get_Opacity(1),
              duration: const Duration(seconds: 1),
              child: TrafficLightCircle(color: Colors.yellow),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              opacity: get_Opacity(2),
              duration: const Duration(seconds: 1),
              child: TrafficLightCircle(color: Colors.green),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: change_Light,
              child: const Text("เปลี่ยนไฟ"),
            ),
          ],
        ),
      ),
    );
  }
}
