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
      home: Scaffold(
        appBar: AppBar(title: const Text("Experiment 2(b) - Row Column Stack")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ROW",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 40),
                  SizedBox(width: 20),
                  Icon(Icons.star, size: 40),
                  SizedBox(width: 20),
                  Icon(Icons.person, size: 40),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                "COLUMN",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Column(
                children: [Text("Item 1"), Text("Item 2"), Text("Item 3")],
              ),

              const SizedBox(height: 30),

              const Text(
                "STACK",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: 150,
                height: 100,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(width: 150, height: 100, color: Colors.blue),
                    const Text(
                      "Overlapping",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
