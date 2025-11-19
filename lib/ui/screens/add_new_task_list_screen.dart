import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/screen_background.dart';
import 'package:flutter_application_11/widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  static const String name = '/add-new-task';
  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing:  8 ,
          children: [
            const SizedBox(height: 36),
            Text('Add New Task',
            style:  TextTheme.of(context).titleLarge,),
            const SizedBox(height: 8,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Title'
              ),
            ),
            TextFormField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Description'
              ),
            ),
            const SizedBox(height: 8,),
            FilledButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),

          ],
        ),
      )),
    );
  }
}
