import 'package:core/core.dart';
import 'package:grpc/grpc.dart';
import 'package:uuid/uuid.dart';

class TodoService extends TodoServiceBase {
  TodoService();

  final uuid = Uuid();
  List<Todo> todos = [
    Todo(
      id: 'sample1',
      content: 'Sample Todo 1',
      status: TodoStatus.TODO_STATUS_INCOMPLETE,
    ),
    Todo(
      id: 'sample2',
      content: 'Sample Todo 2',
      status: TodoStatus.TODO_STATUS_INCOMPLETE,
    ),
    Todo(
      id: 'sample3',
      content: 'Sample Todo 3',
      status: TodoStatus.TODO_STATUS_INCOMPLETE,
    ),
  ];

  @override
  Future<CreateTodoResponse> createTodo(
    ServiceCall call,
    CreateTodoRequest request,
  ) async {
    print('todo.v1.CreateTodo');
    print('content: ${request.content}');
    todos.add(Todo(
      id: uuid.v4(),
      content: request.content,
      status: TodoStatus.TODO_STATUS_INCOMPLETE,
    ));
    return CreateTodoResponse();
  }

  @override
  Future<GetTodosResponse> getTodos(
    ServiceCall call,
    GetTodosRequest request,
  ) async {
    print('todo.v1.GetTodos');
    for (var todo in todos) {
      print('id: ${todo.id}, content: ${todo.content}, status: ${todo.status}');
    }
    return GetTodosResponse(todos: todos);
  }

  @override
  Future<UpdateTodoResponse> updateTodo(
    ServiceCall call,
    UpdateTodoRequest request,
  ) async {
    print('todo.v1.UpdateTodo');
    print('id: ${request.id}');
    print('status: ${request.status}');
    for (int i = 0; i < todos.length; i++) {
      if (request.id == todos[i].id) {
        todos[i].status = request.status;
      }
    }
    return UpdateTodoResponse();
  }

  @override
  Future<DeleteTodoResponse> deleteTodo(
    ServiceCall call,
    DeleteTodoRequest request,
  ) async {
    print('todo.v1.DeleteTodo');
    print('id: ${request.id}');
    todos = todos.where((e) => e.id != request.id).toList();
    return DeleteTodoResponse();
  }
}
