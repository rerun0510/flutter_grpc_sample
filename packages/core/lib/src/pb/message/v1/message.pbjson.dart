///
//  Generated code. Do not modify.
//  source: message/v1/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageBidirectionalStreamRequestDescriptor instead')
const MessageBidirectionalStreamRequest$json = const {
  '1': 'MessageBidirectionalStreamRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `MessageBidirectionalStreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageBidirectionalStreamRequestDescriptor = $convert.base64Decode('CiFNZXNzYWdlQmlkaXJlY3Rpb25hbFN0cmVhbVJlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEhIKBHRleHQYAiABKAlSBHRleHQ=');
@$core.Deprecated('Use messageBidirectionalStreamResponseDescriptor instead')
const MessageBidirectionalStreamResponse$json = const {
  '1': 'MessageBidirectionalStreamResponse',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.message.v1.Message', '10': 'messages'},
  ],
};

/// Descriptor for `MessageBidirectionalStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageBidirectionalStreamResponseDescriptor = $convert.base64Decode('CiJNZXNzYWdlQmlkaXJlY3Rpb25hbFN0cmVhbVJlc3BvbnNlEi8KCG1lc3NhZ2VzGAEgAygLMhMubWVzc2FnZS52MS5NZXNzYWdlUghtZXNzYWdlcw==');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBIXCgd1c2VyX2lkGAIgASgJUgZ1c2VySWQSEgoEdGV4dBgDIAEoCVIEdGV4dBI4Cgl0aW1lc3RhbXAYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl0aW1lc3RhbXA=');
