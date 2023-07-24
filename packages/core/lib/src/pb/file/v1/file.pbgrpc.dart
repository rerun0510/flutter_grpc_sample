///
//  Generated code. Do not modify.
//  source: file/v1/file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'file.pb.dart' as $0;
export 'file.pb.dart';

class FileServiceClient extends $grpc.Client {
  static final _$fileDownload =
      $grpc.ClientMethod<$0.FileDownloadRequest, $0.FileDownloadResponse>(
          '/file.v1.FileService/FileDownload',
          ($0.FileDownloadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FileDownloadResponse.fromBuffer(value));
  static final _$fileUpload =
      $grpc.ClientMethod<$0.FileUploadRequest, $0.FileUploadResponse>(
          '/file.v1.FileService/FileUpload',
          ($0.FileUploadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FileUploadResponse.fromBuffer(value));

  FileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.FileDownloadResponse> fileDownload(
      $0.FileDownloadRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$fileDownload, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.FileUploadResponse> fileUpload(
      $async.Stream<$0.FileUploadRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$fileUpload, request, options: options).single;
  }
}

abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'file.v1.FileService';

  FileServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.FileDownloadRequest, $0.FileDownloadResponse>(
            'FileDownload',
            fileDownload_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.FileDownloadRequest.fromBuffer(value),
            ($0.FileDownloadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FileUploadRequest, $0.FileUploadResponse>(
        'FileUpload',
        fileUpload,
        true,
        false,
        ($core.List<$core.int> value) => $0.FileUploadRequest.fromBuffer(value),
        ($0.FileUploadResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.FileDownloadResponse> fileDownload_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FileDownloadRequest> request) async* {
    yield* fileDownload(call, await request);
  }

  $async.Stream<$0.FileDownloadResponse> fileDownload(
      $grpc.ServiceCall call, $0.FileDownloadRequest request);
  $async.Future<$0.FileUploadResponse> fileUpload(
      $grpc.ServiceCall call, $async.Stream<$0.FileUploadRequest> request);
}
