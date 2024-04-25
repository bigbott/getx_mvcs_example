// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:getx_mvcs_example/view/add_todo_screen.dart';
import 'package:getx_mvcs_example/view/todolist_screen.dart';


class Routes {
  static const TODO_LIST_SCREEN = '/';
  static const ADD_TODO_SCREEN = '/AddTodoScreen';


  static final routes = [
    GetPage(
      name: TODO_LIST_SCREEN,
      page: () =>  const TodoListScreen(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: ADD_TODO_SCREEN,
      page: () => const AddTodoScreen(),
      transition: Transition.circularReveal,
    ),
    
  ];
}
