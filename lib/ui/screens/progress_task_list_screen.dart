import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/task_card.dart';

class ProgressTaskListScreen extends StatefulWidget {
  const ProgressTaskListScreen({super.key});

  @override
  State<ProgressTaskListScreen> createState() => _ProgressTaskListScreenState();
}

class _ProgressTaskListScreenState extends State<ProgressTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return taskCard();
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 8);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
