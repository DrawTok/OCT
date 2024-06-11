import 'package:bai1/widgets/todo_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> todoList = [];

  @override
  void initState() {
    super.initState();
  }

  Future<String?> showTodoDialog(String title, String initialText) async {
    TextEditingController todoController = TextEditingController();
    todoController.text = initialText;

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: todoController,
            decoration: const InputDecoration(hintText: 'Enter to-do item'),
            maxLength: 100,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(todoController.text);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void onCreateTodo() async {
    String? newTodo = await showTodoDialog('Create To-do', '');

    if (newTodo != null && newTodo.isNotEmpty) {
      setState(() {
        todoList.add(newTodo);
      });
    }
  }

  void onUpdateTodo(int index) async {
    String? updatedTodo = await showTodoDialog('Update To-do', todoList[index]);

    if (updatedTodo != null && updatedTodo.isNotEmpty) {
      setState(() {
        todoList[index] = updatedTodo;
      });
    }
  }

  void onDeleteTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To do"),
        actions: [
          TextButton(onPressed: onCreateTodo, child: const Text('Thêm mới'))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: todoList.length,
                    itemBuilder: (_, index) => TodoItem(
                          text: todoList[index],
                          onUpdate: () => onUpdateTodo(index),
                          onDelete: () => onDeleteTodo(index),
                        ))
              ],
            ),
          )),
    );
  }
}
