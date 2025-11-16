import 'package:flutter/material.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 8,
        children: [
          const SizedBox(),
          _buildTaskSummaryListView(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Title of task'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description of the task',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text('Date: 12 June 2021'),
                      Row(
                        children: [
                          Chip(
                            label: Text('New',style: TextStyle(color: Colors.white),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(100),
                            ),
                            backgroundColor: Colors.green,
                            labelPadding: EdgeInsets.symmetric(horizontal: 16,),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskSummaryListView() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            color: Colors.white,
            margin: EdgeInsets.only(left: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: Column(
                children: [
                  Text('12', style: TextTheme.of(context).titleMedium),
                  Text('New', style: TextTheme.of(context).labelSmall),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
