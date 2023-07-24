import 'dart:async';
import 'dart:io';

import 'package:core/core.dart';
import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/data/grpc_channel.dart';

part 'message_repository.g.dart';

// reference
// https://github.com/grpc/grpc-dart/blob/master/example/route_guide/lib/src/client.dart

@riverpod
MessageRepository messageRepository(MessageRepositoryRef ref) {
  final channel = ref.watch(grpcChannelProvider);
  return MessageRepository(channel);
}

@riverpod
Stream<List<MessageModel>> messageBidirectionalStream(
  MessageBidirectionalStreamRef ref, {
  required Stream<String> message,
}) {
  final messageRepository = ref.watch(messageRepositoryProvider);
  return messageRepository.messageBidirectionalStream(message);
}

class MessageRepository {
  MessageRepository(ClientChannel channel)
      : _client = MessageServiceClient(channel);
  final MessageServiceClient _client;

  Stream<List<MessageModel>> messageBidirectionalStream(
    Stream<String> message,
  ) async* {
    final resStream = _client.messageBidirectionalStream(
      message.map(
        (e) => MessageBidirectionalStreamRequest(
          userId: Platform.isIOS ? 'ios' : 'android',
          text: e,
        ),
      ),
    );

    await for (final res in resStream) {
      yield res.messages.map((e) => MessageModel.fromGrpc(e)).toList();
    }
  }
}
