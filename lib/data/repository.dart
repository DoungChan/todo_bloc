import 'package:todo_app/data/model/model.dart';
import 'package:todo_app/data/network_service.dart';

class Repository {
  final NetworkService networkService;

  Repository({required this.networkService});

  Future<List> fetchTodos() async {
    final todoRaw = await networkService.fetchTodos();
    return todoRaw.map((e) => Model.fromJson(e)).toList();
  }

  Future<bool> changeCompletion(bool isCompleted, int id) async {
    final patchObj = {"isCompleted": isCompleted.toString()};
    return await networkService.patchTodo(patchObj, id);
  }
}
