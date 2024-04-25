import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvcs_example/controller/todo_controller.dart';
import 'package:getx_mvcs_example/model/todo.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});
    get todoController => Get.find<TodoController>();

  @override
  Widget build(BuildContext context) {
    
    final titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
        centerTitle: true,
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a todo title',
                ),
              ),
              ElevatedButton(
                child:  const Text("Save", style: TextStyle(fontSize: 30),),
                onPressed: () {
                  todoController.addTodo(Todo(title: titleController.text, isDone: false));
                  Get.back();
                   //Get.offNamed(Routes.TODO_LIST_SCREEN);
                   //Get.off(()=>TodoListScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
