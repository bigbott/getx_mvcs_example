
import 'package:getx_mvcs_example/model/todo.dart';
import 'package:getx_mvcs_example/service/todo_service.dart';

final todoService = InMemoryTodoService._();

class InMemoryTodoService implements TodoService {

  InMemoryTodoService._();

  // ignore: prefer_final_fields
  List<Todo> _todos = [];

  List<Todo> get todos  => _todos;

  @override
  void addTodo(Todo todo) {
    _todos.add(todo);
  }
  
  @override
  void updateTodo(Todo todo) {
    for (Todo t in _todos){
      if (t.title == todo.title){
          t.isDone = todo.isDone;
      }
    }
  }

}