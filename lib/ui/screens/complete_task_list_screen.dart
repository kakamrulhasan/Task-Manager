import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/task_card.dart';

class CompleteTaskListScreen extends StatefulWidget {
  const CompleteTaskListScreen({super.key});

  @override
  State<CompleteTaskListScreen> createState() => _CompleteTaskListScreenState();
}

class _CompleteTaskListScreenState extends State<CompleteTaskListScreen> {
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
      
    );
  }
}
