import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do_c8_sutrday/screens/widgets/task%20widget.dart';

class tasks_screen extends StatefulWidget {
  DateTime date = DateTime.now();

  @override
  State<tasks_screen> createState() => _tasks_screenState();
}

class _tasks_screenState extends State<tasks_screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: Theme.of(context).primaryColor,
          selectedTextColor: Colors.white,
          height: 100,
          onDateChange: (newDate) {
            // New date selected
            setState(() {
              newDate = newDate;
            });
          },
        ),
        SizedBox(
          height: 18,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
            itemBuilder: (context, index) {
              return taskWidget();
            },
            itemCount: 5,
          ),
        )
      ],
    );
  }
}
