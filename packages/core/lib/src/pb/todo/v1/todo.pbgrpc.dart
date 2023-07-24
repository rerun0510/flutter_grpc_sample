///
//  Generated code. Do not modify.
//  source: todo/v1/todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $2;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$createTodo =
      $grpc.ClientMethod<$2.CreateTodoRequest, $2.CreateTodoResponse>(
          '/todo.v1.TodoService/CreateTodo',
          ($2.CreateTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateTodoResponse.fromBuffer(value));
  static final _$getTodos =
      $grpc.ClientMethod<$2.GetTodosRequest, $2.GetTodosResponse>(
          '/todo.v1.TodoService/GetTodos',
          ($2.GetTodosRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetTodosResponse.fromBuffer(value));
  static final _$updateTodo =
      $grpc.ClientMethod<$2.UpdateTodoRequest, $2.UpdateTodoResponse>(
          '/todo.v1.TodoService/UpdateTodo',
          ($2.UpdateTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UpdateTodoResponse.fromBuffer(value));
  static final _$deleteTodo =
      $grpc.ClientMethod<$2.DeleteTodoRequest, $2.DeleteTodoResponse>(
          '/todo.v1.TodoService/DeleteTodo',
          ($2.DeleteTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.DeleteTodoResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateTodoResponse> createTodo(
      $2.CreateTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetTodosResponse> getTodos($2.GetTodosRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodos, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateTodoResponse> updateTodo(
      $2.UpdateTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTodo, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteTodoResponse> deleteTodo(
      $2.DeleteTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.v1.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateTodoRequest, $2.CreateTodoResponse>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateTodoRequest.fromBuffer(value),
        ($2.CreateTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetTodosRequest, $2.GetTodosResponse>(
        'GetTodos',
        getTodos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetTodosRequest.fromBuffer(value),
        ($2.GetTodosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateTodoRequest, $2.UpdateTodoResponse>(
        'UpdateTodo',
        updateTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateTodoRequest.fromBuffer(value),
        ($2.UpdateTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteTodoRequest, $2.DeleteTodoResponse>(
        'DeleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteTodoRequest.fromBuffer(value),
        ($2.DeleteTodoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateTodoResponse> createTodo_Pre($grpc.ServiceCall call,
      $async.Future<$2.CreateTodoRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$2.GetTodosResponse> getTodos_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetTodosRequest> request) async {
    return getTodos(call, await request);
  }

  $async.Future<$2.UpdateTodoResponse> updateTodo_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpdateTodoRequest> request) async {
    return updateTodo(call, await request);
  }

  $async.Future<$2.DeleteTodoResponse> deleteTodo_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeleteTodoRequest> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$2.CreateTodoResponse> createTodo(
      $grpc.ServiceCall call, $2.CreateTodoRequest request);
  $async.Future<$2.GetTodosResponse> getTodos(
      $grpc.ServiceCall call, $2.GetTodosRequest request);
  $async.Future<$2.UpdateTodoResponse> updateTodo(
      $grpc.ServiceCall call, $2.UpdateTodoRequest request);
  $async.Future<$2.DeleteTodoResponse> deleteTodo(
      $grpc.ServiceCall call, $2.DeleteTodoRequest request);
}
