import 'package:flutter/material.dart';
import 'package:flutter_application_11/ui/screens/cancel_task_list_screen.dart';
import 'package:flutter_application_11/ui/screens/complete_task_list_screen.dart';
import 'package:flutter_application_11/ui/screens/new_task_list_screen.dart';
import 'package:flutter_application_11/ui/screens/progress_task_list_screen.dart';
import 'package:flutter_application_11/widgets/tm_app_bar.dart';

class MainBottomNavHolderScreen extends StatefulWidget {
  const MainBottomNavHolderScreen({super.key});
  static const String name = '/main-bottom-nav-holder';
  @override
  State<MainBottomNavHolderScreen> createState() =>
      _MainBottomNavHolderScreenState();
}

class _MainBottomNavHolderScreenState extends State<MainBottomNavHolderScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    NewTaskListScreen(),
    ProgressTaskListScreen(),
    CancelTaskListScreen(),
    CompleteTaskListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: 'NEW',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_time),
            label: 'Progress',
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel_outlined),
            label: 'Cancel',
          ),
          NavigationDestination(icon: Icon(Icons.done), label: 'Completed'),
        ],
      ),
    );
  }
}
