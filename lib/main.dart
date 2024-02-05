import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List<String> todoTasks = [
    "Task 1",
    "Task 2",
  ]; // Use lowercase for variable names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Column(
        children: [
          Column(
            children: todoTasks.map((e) => Text(e)).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // Add task logic here
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
