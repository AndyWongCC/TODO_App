import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;
  TaskCardWidget({this.title = "Empty", this.desc = "Empty"});
  // TODO: SuccessCase: But cannot modify
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
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 121, 97, 216),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
            ),
            Text(desc,
                style: TextStyle(
                  color: Color.fromARGB(255, 108, 71, 255),
                  fontSize: 16,
                  height: 1.5,
                )),
          ],
        ));
  }
}

class TODOWidget extends StatelessWidget {
  final String text;
  final bool isDone;
  TODOWidget({this.text = "NULL", this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  color: isDone ? Color(0xFF7349FE) : Colors.transparent,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Image(image: AssetImage('assets/images/check_icon.png')),
            ),
            Text(
              text,
              style: TextStyle(
                  color: isDone
                      ? Color(0xFF7349FE)
                      : Color.fromARGB(255, 115, 115, 115),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}

class NoGlowBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
