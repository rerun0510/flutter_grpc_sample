import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/todo_repository.dart';

class TodoScreen extends HookConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final todos = ref.watch(getTodosProvider).maybeWhen<List<TodoModel>>(
          data: (todos) => todos,
          orElse: () => [],
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Unary RPC'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Create a todo'),
                content: TextFormField(controller: controller),
                actions: <Widget>[
                  ElevatedButton(
                    onPressed: () async {
                      await ref
                          .read(todoRepositoryProvider)
                          .createTodo(content: controller.text);
                      controller.clear();
                      // ref.invalidate(getTodosProvider);
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('Create'),
                  ),
                ],
              );
            },
          )
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(getTodosProvider);
        },
        child: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final todo = todos[index];
            return Card(
              child: Slidable(
                startActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (_) async {
                        await ref
                            .read(todoRepositoryProvider)
                            .deleteTodo(id: todo.id);
                        // ref.invalidate(getTodosProvider);
                      },
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text(todo.content),
                  trailing: Checkbox(
                    value: todo.status == TodoStatus.TODO_STATUS_COMPLETE,
                    onChanged: (_) async {
                      ref.read(todoRepositoryProvider).updateTodo(
                            id: todo.id,
                            status:
                                todo.status == TodoStatus.TODO_STATUS_COMPLETE
                                    ? TodoStatus.TODO_STATUS_INCOMPLETE
                                    : TodoStatus.TODO_STATUS_COMPLETE,
                          );
                      // ref.invalidate(getTodosProvider);
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
