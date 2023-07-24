///
//  Generated code. Do not modify.
//  source: todo/v1/todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TodoStatus extends $pb.ProtobufEnum {
  static const TodoStatus TODO_STATUS_UNSPECIFIED = TodoStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TODO_STATUS_UNSPECIFIED');
  static const TodoStatus TODO_STATUS_INCOMPLETE = TodoStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TODO_STATUS_INCOMPLETE');
  static const TodoStatus TODO_STATUS_COMPLETE = TodoStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TODO_STATUS_COMPLETE');

  static const $core.List<TodoStatus> values = <TodoStatus> [
    TODO_STATUS_UNSPECIFIED,
    TODO_STATUS_INCOMPLETE,
    TODO_STATUS_COMPLETE,
  ];

  static final $core.Map<$core.int, TodoStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TodoStatus? valueOf($core.int value) => _byValue[value];

  const TodoStatus._($core.int v, $core.String n) : super(v, n);
}

