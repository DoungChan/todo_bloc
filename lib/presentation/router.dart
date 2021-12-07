import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screen/add_screen.dart';
import 'package:todo_app/screen/edit_screen.dart';
import 'package:todo_app/screen/todo_screen.dart';

class AppRouter {
  Route? generatedRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const TodoScreen());
      case "/edit_todo":
        return MaterialPageRoute(builder: (_) => const EditScreen());
      case "/add_todo":
        return MaterialPageRoute(builder: (_) => const AddSrceen());
      default:
        return null;
    }
  }
}
