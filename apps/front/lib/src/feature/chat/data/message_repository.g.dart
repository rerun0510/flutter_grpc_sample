// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageRepositoryHash() => r'7fc8c194ce55b661e2d739e93c43000fc6d499ce';

/// See also [messageRepository].
@ProviderFor(messageRepository)
final messageRepositoryProvider =
    AutoDisposeProvider<MessageRepository>.internal(
  messageRepository,
  name: r'messageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$messageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MessageRepositoryRef = AutoDisposeProviderRef<MessageRepository>;
String _$messageBidirectionalStreamHash() =>
    r'5220d2cf18645d54ff295a13d621ca86ceb45815';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef MessageBidirectionalStreamRef
    = AutoDisposeStreamProviderRef<List<MessageModel>>;

/// See also [messageBidirectionalStream].
@ProviderFor(messageBidirectionalStream)
const messageBidirectionalStreamProvider = MessageBidirectionalStreamFamily();

/// See also [messageBidirectionalStream].
class MessageBidirectionalStreamFamily
    extends Family<AsyncValue<List<MessageModel>>> {
  /// See also [messageBidirectionalStream].
  const MessageBidirectionalStreamFamily();

  /// See also [messageBidirectionalStream].
  MessageBidirectionalStreamProvider call({
    required Stream<String> message,
  }) {
    return MessageBidirectionalStreamProvider(
      message: message,
    );
  }

  @override
  MessageBidirectionalStreamProvider getProviderOverride(
    covariant MessageBidirectionalStreamProvider provider,
  ) {
    return call(
      message: provider.message,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'messageBidirectionalStreamProvider';
}

/// See also [messageBidirectionalStream].
class MessageBidirectionalStreamProvider
    extends AutoDisposeStreamProvider<List<MessageModel>> {
  /// See also [messageBidirectionalStream].
  MessageBidirectionalStreamProvider({
    required this.message,
  }) : super.internal(
          (ref) => messageBidirectionalStream(
            ref,
            message: message,
          ),
          from: messageBidirectionalStreamProvider,
          name: r'messageBidirectionalStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageBidirectionalStreamHash,
          dependencies: MessageBidirectionalStreamFamily._dependencies,
          allTransitiveDependencies:
              MessageBidirectionalStreamFamily._allTransitiveDependencies,
        );

  final Stream<String> message;

  @override
  bool operator ==(Object other) {
    return other is MessageBidirectionalStreamProvider &&
        other.message == message;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
