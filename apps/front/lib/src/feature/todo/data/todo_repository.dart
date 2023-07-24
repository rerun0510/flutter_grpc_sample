import 'package:core/core.dart';
import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/data/grpc_channel.dart';

part 'todo_repository.g.dart';

@riverpod
FutureOr<List<TodoModel>> getTodos(GetTodosRef ref) {
  final todoRepository = ref.watch(todoRepositoryProvider);
  return todoRepository.getTodos();
}

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  final channel = ref.watch(grpcChannelProvider);
  return TodoRepository(channel);
}

class TodoRepository {
  TodoRepository(ClientChannel channel) : _client = TodoServiceClient(channel);
  final TodoServiceClient _client;

  Future<List<TodoModel>> getTodos() async {
    final response = await _client.getTodos(GetTodosRequest());
    final todos = response.todos.map((e) => TodoModel.fromGrpc(e)).toList();
    return todos;
  }

  Future<void> createTodo({required String content}) async {
    await _client.createTodo(
      CreateTodoRequest(content: content),
    );
  }

  Future<void> updateTodo({
    required String id,
    required TodoStatus status,
  }) async {
    await _client.updateTodo(
      UpdateTodoRequest(
        id: id,
        status: status,
      ),
    );
  }

  Future<void> deleteTodo({required String id}) async {
    await _client.deleteTodo(
      DeleteTodoRequest(id: id),
    );
  }
}
