import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvcs_example/controller/todo_controller.dart';
import 'package:getx_mvcs_example/model/todo.dart';
import 'package:getx_mvcs_example/routes.dart';
import 'package:getx_mvcs_example/service/inmemory_todo_service.dart';

class TodoListScreen extends StatelessWidget {
   const TodoListScreen({super.key});
TodoController get todoController =>
        Get.put(TodoController(todoService: todoService), permanent: true);
       
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Get.toNamed(Routes.ADD_TODO_SCREEN);
            },
          )
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child:  Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Obx(
                        () =>ListView.builder(
                  itemCount: todoController.todoState.length,
                  itemBuilder: (_, index) {
                    return Row
                    (
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                          Text('${index + 1}. ', 
                          style: const TextStyle(fontSize: 20)),  
                        Expanded(
                          child: Text(todoController.todoState[index].title, 
                          style: const TextStyle(fontSize: 20)),  ),
                        Expanded(
                          child: Checkbox(
                              
                              value: todoController.todoState[index].isDone,
                              onChanged: (value) {
                                todoController.updateTodo(Todo(
                                    title: todoController.todoState[index].title,
                                    isDone: value ?? false));
                              }),
                        )
                      ],
                    );
                  },
                ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
