import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:front/src/feature/file/data/file_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FileUploadScreen extends HookConsumerWidget {
  const FileUploadScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final byte = useState<int?>(null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client side streaming RPC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Upload'),
              onPressed: () async {
                byte.value = null;
                byte.value = await ref.read(fileUploadProvider.future);
              },
            ),
            Text('result: ${byte.value ?? ''} byte')
          ],
        ),
      ),
    );
  }
}
