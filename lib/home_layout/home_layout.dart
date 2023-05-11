import 'package:flutter/material.dart';
import 'package:to_do_c8_sutrday/screens/settings_screen.dart';
import 'package:to_do_c8_sutrday/screens/tasks_screen.dart';

import '../screens/widgets/show_add_task_buttom_sheet.dart';

class home_layout extends StatefulWidget {
  static const String routname = "Homelayout";

  @override
  State<home_layout> createState() => _home_layoutState();
}

class _home_layoutState extends State<home_layout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          "todo app",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showAddTaskSheet();
          },
          shape: StadiumBorder(
            side: BorderSide(color: Colors.white, width: 3),
          ),
          child: Icon(Icons.add)),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconSize: 30,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: ""),
          ],
        ),
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [tasks_screen(), settings_screen()];

  void showAddTaskSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return show_add_task_buttom_sheet();
      },
    );
  }
}
