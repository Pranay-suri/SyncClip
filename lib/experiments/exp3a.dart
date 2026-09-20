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
      home: const ResponsiveScreen(),
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return Scaffold(
        appBar: AppBar(title: const Text("Mobile Layout")),
        body: ListView(
          children: const [
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Mobile Layout"),
                subtitle: Text("Screen width is less than 600"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text("Responsive UI"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("MediaQuery"),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: const Text("Large Screen Layout")),
        body: GridView.count(
          crossAxisCount: 2,
          children: const [
            Card(
              child: Center(
                child: Text("Responsive UI", style: TextStyle(fontSize: 22)),
              ),
            ),
            Card(
              child: Center(
                child: Text("MediaQuery", style: TextStyle(fontSize: 22)),
              ),
            ),
            Card(
              child: Center(
                child: Text("Breakpoint", style: TextStyle(fontSize: 22)),
              ),
            ),
            Card(
              child: Center(
                child: Text("Flutter", style: TextStyle(fontSize: 22)),
              ),
            ),
          ],
        ),
      );
    }
  }
}
