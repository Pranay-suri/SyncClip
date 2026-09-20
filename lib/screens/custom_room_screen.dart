import 'package:flutter/material.dart';

class CustomRoomScreen extends StatefulWidget {
  const CustomRoomScreen({super.key});

  @override
  State<CustomRoomScreen> createState() => _CustomRoomScreenState();
}

class _CustomRoomScreenState extends State<CustomRoomScreen> {
  final TextEditingController contentController = TextEditingController();
  final TextEditingController roomIdController = TextEditingController();

  String selectedDuration = '30 minutes';

  final List<String> durations = [
    '10 minutes',
    '30 minutes',
    '1 hour',
    '6 hours',
    '24 hours',
  ];

  void createRoom() {
    if (contentController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter some content first.')),
      );
      return;
    }

    if (roomIdController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a custom Room ID.')),
      );
      return;
    }

    Navigator.pushNamed(
      context,
      '/room',
      arguments: {
        'roomId': roomIdController.text.trim(),
        'content': contentController.text,
        'duration': selectedDuration,
      },
    );
  }

  @override
  void dispose() {
    contentController.dispose();
    roomIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Custom Room')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Create Your Own Room',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Choose a custom Room ID and how long the room should remain available.',
                ),

                const SizedBox(height: 24),

                TextField(
                  controller: roomIdController,
                  decoration: const InputDecoration(
                    labelText: 'Custom Room ID',
                    hintText: 'Example: MYCODE123',
                    prefixIcon: Icon(Icons.meeting_room),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 20),

                TextField(
                  controller: contentController,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    labelText: 'Content',
                    hintText: 'Paste your text or code here...',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 20),

                DropdownButtonFormField<String>(
                  initialValue: selectedDuration,
                  decoration: const InputDecoration(
                    labelText: 'Room Duration',
                    prefixIcon: Icon(Icons.timer),
                    border: OutlineInputBorder(),
                  ),
                  items: durations.map((duration) {
                    return DropdownMenuItem(
                      value: duration,
                      child: Text(duration),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        selectedDuration = value;
                      });
                    }
                  },
                ),

                const SizedBox(height: 24),

                ElevatedButton.icon(
                  onPressed: createRoom,
                  icon: const Icon(Icons.add_box),
                  label: const Text('Create Room'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
