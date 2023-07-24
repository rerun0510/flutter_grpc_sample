import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:front/src/feature/chat/data/message_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useStreamController<String>();
    final data = ref
        .watch(messageBidirectionalStreamProvider(message: controller.stream));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bidirectional streaming RPC'),
      ),
      body: data.when(
        data: (messages) {
          return Chat(
            messages: messages
                .map(
                  (e) => types.TextMessage(
                    author: types.User(id: e.userId),
                    id: e.id,
                    text: e.text,
                    createdAt: e.timestamp.microsecondsSinceEpoch,
                  ),
                )
                .toList(),
            onSendPressed: (types.PartialText message) {
              controller.add(
                message.text,
              );
            },
            user: types.User(
              id: Platform.isIOS ? 'ios' : 'android',
            ),
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
