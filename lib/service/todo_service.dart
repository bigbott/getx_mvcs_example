
import 'package:getx_mvcs_example/model/todo.dart';

abstract class TodoService {
  List<Todo> get todos;
  void addTodo(Todo todo);
  void updateTodo(Todo todo);
}