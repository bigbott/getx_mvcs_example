
import 'package:get/get.dart';
import 'package:getx_mvcs_example/model/todo.dart';
import 'package:getx_mvcs_example/service/todo_service.dart';

class TodoController extends GetxController {

  final TodoService todoService;

  RxList<Todo> todoState = <Todo>[].obs;

  TodoController({required this.todoService}){
     todoState = todoService.todos.obs;
  }

  void addTodo (Todo todo){
    todoService.addTodo(todo);
    todoState.value = todoService.todos;
    todoState.refresh();
  }

  void updateTodo(Todo todo){
    todoService.updateTodo(todo);
    todoState.value = todoService.todos;
    todoState.refresh();
  }
}