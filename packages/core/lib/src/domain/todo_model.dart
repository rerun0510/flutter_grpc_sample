import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required String id,
    required String content,
    required TodoStatus status,
  }) = _TodoModel;

  const TodoModel._();

  factory TodoModel.fromGrpc(Todo todo) => TodoModel(
        id: todo.id,
        content: todo.content,
        status: todo.status,
      );

  Todo toGrpc() => Todo(
        id: id,
        content: content,
        status: status,
      );
}
