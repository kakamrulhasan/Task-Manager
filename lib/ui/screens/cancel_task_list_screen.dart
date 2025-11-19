import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/task_card.dart';

class CancelTaskListScreen extends StatefulWidget {
  const CancelTaskListScreen({super.key});

  @override
  State<CancelTaskListScreen> createState() => _CancelTaskListScreenState();
}

class _CancelTaskListScreenState extends State<CancelTaskListScreen> {
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
