import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/todo_cubit.dart';
import 'package:todo_app/data/network_service.dart';
import 'package:todo_app/data/repository.dart';
import 'package:todo_app/screen/add_screen.dart';
import 'package:todo_app/screen/edit_screen.dart';
import 'package:todo_app/screen/todo_screen.dart';

class AppRouter {
  late final Repository repository;

  AppRouter() {
    repository = Repository(networkService: NetworkService());
  }

  Route? generatedRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => TodoCubit(repository: repository),
                  child: TodoScreen(),
                ));
      case "/edit_todo":
        return MaterialPageRoute(builder: (_) => const EditScreen());
      case "/add_todo":
        return MaterialPageRoute(builder: (_) => const AddSrceen());
      default:
        return null;
    }
  }
}
