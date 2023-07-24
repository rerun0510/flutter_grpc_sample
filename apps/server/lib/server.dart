import 'package:grpc/grpc.dart' as grpc;
import 'package:server/services/file_service.dart';
import 'package:server/services/message_service.dart';
import 'package:server/services/todo_service.dart';

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server.create(services: [
      MessageService(),
      FileService(),
      TodoService(),
    ]);
    await server.serve(port: 8080);
    print('Server listening on port ${server.port}...');
  }
}
