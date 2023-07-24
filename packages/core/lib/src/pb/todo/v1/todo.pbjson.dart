///
//  Generated code. Do not modify.
//  source: todo/v1/todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use todoStatusDescriptor instead')
const TodoStatus$json = const {
  '1': 'TodoStatus',
  '2': const [
    const {'1': 'TODO_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'TODO_STATUS_INCOMPLETE', '2': 1},
    const {'1': 'TODO_STATUS_COMPLETE', '2': 2},
  ],
};

/// Descriptor for `TodoStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List todoStatusDescriptor = $convert.base64Decode('CgpUb2RvU3RhdHVzEhsKF1RPRE9fU1RBVFVTX1VOU1BFQ0lGSUVEEAASGgoWVE9ET19TVEFUVVNfSU5DT01QTEVURRABEhgKFFRPRE9fU1RBVFVTX0NPTVBMRVRFEAI=');
@$core.Deprecated('Use createTodoRequestDescriptor instead')
const CreateTodoRequest$json = const {
  '1': 'CreateTodoRequest',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `CreateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUb2RvUmVxdWVzdBIYCgdjb250ZW50GAEgASgJUgdjb250ZW50');
@$core.Deprecated('Use createTodoResponseDescriptor instead')
const CreateTodoResponse$json = const {
  '1': 'CreateTodoResponse',
};

/// Descriptor for `CreateTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVUb2RvUmVzcG9uc2U=');
@$core.Deprecated('Use getTodosRequestDescriptor instead')
const GetTodosRequest$json = const {
  '1': 'GetTodosRequest',
};

/// Descriptor for `GetTodosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodosRequestDescriptor = $convert.base64Decode('Cg9HZXRUb2Rvc1JlcXVlc3Q=');
@$core.Deprecated('Use getTodosResponseDescriptor instead')
const GetTodosResponse$json = const {
  '1': 'GetTodosResponse',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.todo.v1.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `GetTodosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodosResponseDescriptor = $convert.base64Decode('ChBHZXRUb2Rvc1Jlc3BvbnNlEiMKBXRvZG9zGAEgAygLMg0udG9kby52MS5Ub2RvUgV0b2Rvcw==');
@$core.Deprecated('Use updateTodoRequestDescriptor instead')
const UpdateTodoRequest$json = const {
  '1': 'UpdateTodoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.todo.v1.TodoStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTodoRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSKwoGc3RhdHVzGAIgASgOMhMudG9kby52MS5Ub2RvU3RhdHVzUgZzdGF0dXM=');
@$core.Deprecated('Use updateTodoResponseDescriptor instead')
const UpdateTodoResponse$json = const {
  '1': 'UpdateTodoResponse',
};

/// Descriptor for `UpdateTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTodoResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVUb2RvUmVzcG9uc2U=');
@$core.Deprecated('Use deleteTodoRequestDescriptor instead')
const DeleteTodoRequest$json = const {
  '1': 'DeleteTodoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTodoRequestDescriptor = $convert.base64Decode('ChFEZWxldGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteTodoResponseDescriptor instead')
const DeleteTodoResponse$json = const {
  '1': 'DeleteTodoResponse',
};

/// Descriptor for `DeleteTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTodoResponseDescriptor = $convert.base64Decode('ChJEZWxldGVUb2RvUmVzcG9uc2U=');
@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.todo.v1.TodoStatus', '10': 'status'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode('CgRUb2RvEg4KAmlkGAEgASgJUgJpZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW50EisKBnN0YXR1cxgDIAEoDjITLnRvZG8udjEuVG9kb1N0YXR1c1IGc3RhdHVz');
