import 'package:flutter/material.dart';
import 'package:front/src/feature/file/data/file_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FileDownloadScreen extends ConsumerWidget {
  const FileDownloadScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(fileDownloadProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Server side streaming RPC'),
      ),
      body: data.when(
        data: (downloadData) {
          return Center(
            child: Text(downloadData),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Text('Error: $error'),
      ),
    );
  }
}
