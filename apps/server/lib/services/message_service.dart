import 'dart:async';

import 'package:core/core.dart';
import 'package:grpc/grpc.dart';
import 'package:redis/redis.dart';
import 'package:uuid/uuid.dart';

// reference
// https://github.com/grpc/grpc-dart/blob/master/example/route_guide/lib/src/server.dart
// https://pub.dev/packages/redis#pubsubhttpredisiotopicspubsub

class MessageService extends MessageServiceBase {
  final messages = <MessageModel>[];

  @override
  Stream<MessageBidirectionalStreamResponse> messageBidirectionalStream(
    ServiceCall call,
    Stream<MessageBidirectionalStreamRequest> request,
  ) async* {
    print('message.v1.MessageBidirectionalStream');
    yield MessageBidirectionalStreamResponse(
      messages: messages.map((e) => e.toGrpc()).toList(),
    );
    final sendConnection = RedisConnection();
    final sendCmd = await sendConnection.connect('localhost', 6379);
    final pubsubConnection = RedisConnection();
    final pubsubCmd = await pubsubConnection.connect('localhost', 6379);
    final pubsub = PubSub(pubsubCmd);
    pubsub.subscribe(['room_id']);
    final stream = pubsub.getStream();
    var streamWithoutErrors = stream.handleError((e) => print("error: $e"));

    request.listen(
      (e) async {
        print('userId: ${e.userId}, text: ${e.text}');
        final message = MessageModel(
          id: Uuid().v4(),
          userId: e.userId,
          text: e.text,
          timestamp: DateTime.now(),
        );
        messages.add(message);
        await sendCmd.send_object(['PUBLISH', 'room_id', 'new message']);
      },
      onDone: () async {
        await sendConnection.close();
        await pubsubConnection.close();
        print('close');
      },
    );
    await for (final _ in streamWithoutErrors) {
      yield MessageBidirectionalStreamResponse(
        messages: messages.map((e) => e.toGrpc()).toList(),
      );
    }
  }
}
