import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String userId,
    required String text,
    required DateTime timestamp,
  }) = _MessageModel;

  const MessageModel._();

  factory MessageModel.fromGrpc(Message m) => MessageModel(
        id: m.id,
        userId: m.userId,
        text: m.text,
        timestamp: m.timestamp.toDateTime(),
      );

  Message toGrpc() => Message(
        id: id,
        userId: userId,
        text: text,
        timestamp: Timestamp.fromDateTime(timestamp),
      );
}
