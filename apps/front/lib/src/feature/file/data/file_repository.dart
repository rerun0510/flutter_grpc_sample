import 'dart:async';
import 'dart:convert';
import 'package:core/core.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/data/grpc_channel.dart';

part 'file_repository.g.dart';

@riverpod
FileRepository fileRepository(FileRepositoryRef ref) {
  final channel = ref.watch(grpcChannelProvider);
  return FileRepository(channel);
}

@riverpod
Stream<String> fileDownload(FileDownloadRef ref) {
  final fileRepository = ref.watch(fileRepositoryProvider);
  return fileRepository.fileDownload();
}

@riverpod
Future<int> fileUpload(FileUploadRef ref) {
  final fileRepository = ref.watch(fileRepositoryProvider);
  return fileRepository.fileUpload();
}

class FileRepository {
  FileRepository(ClientChannel channel) : _client = FileServiceClient(channel);
  final FileServiceClient _client;

  Stream<String> fileDownload() async* {
    final resStream = _client.fileDownload(FileDownloadRequest());
    final tmp = <int>[];

    await for (final res in resStream) {
      tmp.addAll(res.data);
      yield utf8.decode(tmp);
    }
  }

  Future<int> fileUpload() async {
    final fileStream = fileLoad();
    final res = await _client.fileUpload(
      fileStream.map((e) => FileUploadRequest(data: e)),
    );
    return res.size;
  }

  Stream<List<int>> fileLoad() async* {
    final fileStream = rootBundle.load('assets/language.txt').asStream();
    await for (final data in fileStream) {
      final buffer = data.buffer;
      final uint8List =
          buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      var index = 0;
      while (index < uint8List.length) {
        final endIndex = index + 5;
        yield uint8List
            .sublist(
              index,
              endIndex < uint8List.length ? endIndex : uint8List.length,
            )
            .toList();
        index = endIndex;
        await Future.delayed(const Duration(seconds: 1));
      }
    }
  }
}
