///
//  Generated code. Do not modify.
//  source: message/v1/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $3;

class MessageBidirectionalStreamRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageBidirectionalStreamRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'message.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  MessageBidirectionalStreamRequest._() : super();
  factory MessageBidirectionalStreamRequest({
    $core.String? userId,
    $core.String? text,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory MessageBidirectionalStreamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageBidirectionalStreamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageBidirectionalStreamRequest clone() => MessageBidirectionalStreamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageBidirectionalStreamRequest copyWith(void Function(MessageBidirectionalStreamRequest) updates) => super.copyWith((message) => updates(message as MessageBidirectionalStreamRequest)) as MessageBidirectionalStreamRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageBidirectionalStreamRequest create() => MessageBidirectionalStreamRequest._();
  MessageBidirectionalStreamRequest createEmptyInstance() => create();
  static $pb.PbList<MessageBidirectionalStreamRequest> createRepeated() => $pb.PbList<MessageBidirectionalStreamRequest>();
  @$core.pragma('dart2js:noInline')
  static MessageBidirectionalStreamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageBidirectionalStreamRequest>(create);
  static MessageBidirectionalStreamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class MessageBidirectionalStreamResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageBidirectionalStreamResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'message.v1'), createEmptyInstance: create)
    ..pc<Message>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  MessageBidirectionalStreamResponse._() : super();
  factory MessageBidirectionalStreamResponse({
    $core.Iterable<Message>? messages,
  }) {
    final _result = create();
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory MessageBidirectionalStreamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageBidirectionalStreamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageBidirectionalStreamResponse clone() => MessageBidirectionalStreamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageBidirectionalStreamResponse copyWith(void Function(MessageBidirectionalStreamResponse) updates) => super.copyWith((message) => updates(message as MessageBidirectionalStreamResponse)) as MessageBidirectionalStreamResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageBidirectionalStreamResponse create() => MessageBidirectionalStreamResponse._();
  MessageBidirectionalStreamResponse createEmptyInstance() => create();
  static $pb.PbList<MessageBidirectionalStreamResponse> createRepeated() => $pb.PbList<MessageBidirectionalStreamResponse>();
  @$core.pragma('dart2js:noInline')
  static MessageBidirectionalStreamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageBidirectionalStreamResponse>(create);
  static MessageBidirectionalStreamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Message> get messages => $_getList(0);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'message.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.String? id,
    $core.String? userId,
    $core.String? text,
    $3.Timestamp? timestamp,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (text != null) {
      _result.text = text;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureTimestamp() => $_ensure(3);
}

