import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvcs_example/routes.dart';
import 'package:getx_mvcs_example/view/todolist_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:  const TodoListScreen(),
     theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      initialRoute: Routes.TODO_LIST_SCREEN,
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
