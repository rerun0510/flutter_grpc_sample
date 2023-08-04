import 'package:flutter/material.dart';

import 'feature/chat/presentation/chat_screen.dart';
import 'feature/file/presentation/file_download_screen.dart';
import 'feature/file/presentation/file_upload_screen.dart';
import 'feature/todo/presentation/todo_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Unary streaming RPC'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Server side streaming RPC'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FileDownloadScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Client side streaming RPC'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FileUploadScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Bidirectional streaming RPC'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
