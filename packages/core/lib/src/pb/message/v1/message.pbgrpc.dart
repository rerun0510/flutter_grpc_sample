///
//  Generated code. Do not modify.
//  source: message/v1/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'message.pb.dart' as $1;
export 'message.pb.dart';

class MessageServiceClient extends $grpc.Client {
  static final _$messageBidirectionalStream = $grpc.ClientMethod<
          $1.MessageBidirectionalStreamRequest,
          $1.MessageBidirectionalStreamResponse>(
      '/message.v1.MessageService/MessageBidirectionalStream',
      ($1.MessageBidirectionalStreamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.MessageBidirectionalStreamResponse.fromBuffer(value));

  MessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.MessageBidirectionalStreamResponse>
      messageBidirectionalStream(
          $async.Stream<$1.MessageBidirectionalStreamRequest> request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$messageBidirectionalStream, request,
        options: options);
  }
}

abstract class MessageServiceBase extends $grpc.Service {
  $core.String get $name => 'message.v1.MessageService';

  MessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.MessageBidirectionalStreamRequest,
            $1.MessageBidirectionalStreamResponse>(
        'MessageBidirectionalStream',
        messageBidirectionalStream,
        true,
        true,
        ($core.List<$core.int> value) =>
            $1.MessageBidirectionalStreamRequest.fromBuffer(value),
        ($1.MessageBidirectionalStreamResponse value) =>
            value.writeToBuffer()));
  }

  $async.Stream<$1.MessageBidirectionalStreamResponse>
      messageBidirectionalStream($grpc.ServiceCall call,
          $async.Stream<$1.MessageBidirectionalStreamRequest> request);
}
