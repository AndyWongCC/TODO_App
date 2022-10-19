import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  // final String title;
  // Error for this.title
  // TaskCardWidget({this.title});
  // OK
  // TaskCardWidget({required this.title})

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // title ?? "Empty",
              "Get Start",
              style: TextStyle(
                  color: Color(0xFF211551),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
            ),
            Text(
                "Hi, User! Welcome to the TODO App. It helps you to keep track on things, please try and give us some feedback.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                )),
          ],
        ));
  }
}