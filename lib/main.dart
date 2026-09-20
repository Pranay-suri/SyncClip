import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/send_screen.dart';
import 'screens/custom_room_screen.dart';
import 'screens/join_room_screen.dart';
import 'screens/room_screen.dart';

void main() {
  runApp(const SyncClipApp());
}

class SyncClipApp extends StatelessWidget {
  const SyncClipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SyncClip',

      initialRoute: '/',

      routes: {
        '/': (context) => const HomeScreen(),
        '/send': (context) => const SendScreen(),
        '/custom-room': (context) => const CustomRoomScreen(),
        '/join': (context) => const JoinRoomScreen(),
        '/room': (context) => const RoomScreen(),
      },
    );
  }
}
