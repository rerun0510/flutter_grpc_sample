import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:core/core.dart';
import 'package:grpc/grpc.dart';
import 'package:path/path.dart' as p;

class FileService extends FileServiceBase {
  @override
  Stream<FileDownloadResponse> fileDownload(
    ServiceCall call,
    FileDownloadRequest request,
  ) async* {
    print('file.v1.FileDownload');
    final filePath =
        p.join(Directory.current.path, 'apps/server/lib', 'language.txt');
    final file = File(filePath);

    var tmp = <int>[];
    await for (final data in file.openRead()) {
      tmp.addAll(data);

      while (tmp.length >= 5) {
        print('now loading...');
        final fiveBytesChunk = tmp.sublist(0, 5);
        yield FileDownloadResponse(data: fiveBytesChunk);
        await Future.delayed(const Duration(seconds: 1));
        tmp = tmp.sublist(5);
      }
    }
    if (tmp.isNotEmpty) {
      yield FileDownloadResponse(data: tmp);
    }
    print('completed!');
  }

  @override
  Future<FileUploadResponse> fileUpload(
    ServiceCall call,
    Stream<FileUploadRequest> request,
  ) async {
    print('file.v1.FileUpload');
    final tmp = <int>[];
    await for (final req in request) {
      tmp.addAll(req.data);
      print(utf8.decode(req.data));
    }
    print('completed!');
    return FileUploadResponse(size: tmp.length);
  }
}
