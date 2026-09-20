import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BreakpointScreen(),
    );
  }
}

class BreakpointScreen extends StatelessWidget {
  const BreakpointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    String layout;

    if (screenWidth < 600) {
      layout = "Mobile";
    } else if (screenWidth < 900) {
      layout = "Tablet";
    } else {
      layout = "Desktop";
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Experiment 3(b) - Breakpoints")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.devices, size: 80),
            const SizedBox(height: 20),
            Text(
              "Current Layout: $layout",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text(
              "Screen Width: ${screenWidth.toStringAsFixed(0)} pixels",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 15),
            const Text(
              "Breakpoint: 600px and 900px",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
