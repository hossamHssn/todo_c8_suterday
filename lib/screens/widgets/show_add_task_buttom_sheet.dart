import 'package:flutter/material.dart';

class show_add_task_buttom_sheet extends StatefulWidget {
  @override
  State<show_add_task_buttom_sheet> createState() =>
      _show_add_task_buttom_sheetState();
}

class _show_add_task_buttom_sheetState
    extends State<show_add_task_buttom_sheet> {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add new task",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 14,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter task tittle";
                  } else if (value.length < 10) {
                    return "please enter 10 char";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label: Text("task title"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter task Description";
                  } else if (value.length < 10) {
                    return "please enter 10 char";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label: Text("task descreption"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "selected Time",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  ChoseTaskDate(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "12/12/2022",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    print("route c8");
                  }
                },
                child: Text(
                  "add task",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void ChoseTaskDate(BuildContext context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }
}
