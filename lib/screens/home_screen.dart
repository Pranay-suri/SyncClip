import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final isMobile = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(title: const Text('SyncClip'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.content_paste, size: 80),

                const SizedBox(height: 20),

                const Text(
                  'SyncClip',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Share text, messages and code between devices using a room.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 40),

                if (isMobile)
                  Column(
                    children: [
                      _buildButton(context, 'Send', Icons.send, '/send'),
                      const SizedBox(height: 16),
                      _buildButton(
                        context,
                        'Create Custom Room',
                        Icons.add_box,
                        '/custom-room',
                      ),
                      const SizedBox(height: 16),
                      _buildButton(context, 'Join Room', Icons.login, '/join'),
                    ],
                  )
                else
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _buildButton(
                          context,
                          'Send',
                          Icons.send,
                          '/send',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildButton(
                          context,
                          'Create Custom Room',
                          Icons.add_box,
                          '/custom-room',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildButton(
                          context,
                          'Join Room',
                          Icons.login,
                          '/join',
                        ),
                      ),
                    ],
                  ),

                const SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.info_outline),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'The room owner can share content, while joined users can view and copy it.',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context,
    String title,
    IconData icon,
    String route,
  ) {
    return SizedBox(
      height: 55,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: Icon(icon),
        label: Text(title),
      ),
    );
  }
}
