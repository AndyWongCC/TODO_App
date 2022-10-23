import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/database_helper.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/weidgets.dart';

class Taskpage extends StatefulWidget {
  final int? id;
  const Taskpage({this.id});

  @override
  State<Taskpage> createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 12),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Image(
                          width: 50,
                          height: 30,
                          image:
                              AssetImage('assets/images/back_arrow_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onSubmitted: (value) async {
                          print("Field Value: $value");

                          if (value != "") {
                            num += 1;
                            DatabaseHelper _dbHelper = DatabaseHelper();

                            Task _newTask = Task(
                              title: value,
                            );

                            _dbHelper.insertTask(_newTask);

                            print("New task has been created");
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Task Title",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 121, 97, 216)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter description for the task",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 33)),
                ),
              ),
              TODOWidget(
                text: "First task",
                isDone: true,
              ),
              TODOWidget(
                text: "Second task",
              ),
              TODOWidget(),
              TODOWidget(),
            ]),
            Positioned(
              bottom: 0.0,
              right: 24.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Taskpage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 201, 188, 245),
                  ),
                  child: Image(
                      width: 40,
                      height: 40,
                      image: AssetImage('assets/images/delete_icon.png')),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
