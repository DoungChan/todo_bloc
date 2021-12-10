import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/data/model/model.dart';
import 'package:todo_app/data/repository.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final Repository repository;

  TodoCubit({required this.repository}) : super(TodoInitial());

  void fetchTodos() {
    repository.fetchTodos().then((todos) {
      emit(TodoLoaded(todos: todos));
    });
  }

  void changeCompletion(Model todo) {
    repository.changeCompletion(!todo.isCompleted, todo.id).then((isChanged) {
      if (isChanged) {
        todo.isCompleted = !todo.isCompleted;
        //updateTodoList();
      }
    });
  }

  // void updateTodoList() {
  //   final currentState = state;
  //   if (currentState is TodosLoaded)
  //     emit(TodosLoaded(todos: currentState.todos));
  // }
}
