import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/screens/taskpage.dart';
import 'package:todoapp/weidgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
            color: Color(0xFFF6F6F6),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      width: 80,
                      height: 80,
                      image: AssetImage('assets/images/logo.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 18),
                    ),
                    //TODO: Solve Scolling page
                    Expanded(
                      child: ListView(
                        children: [
                          TaskCardWidget(
                              // title: 'Get Start',
                              ),
                          TaskCardWidget(
                              // title: 'Get Start',
                              ),
                          TaskCardWidget(
                              // title: 'Get Start',
                              ),
                          TaskCardWidget(
                              // title: 'Get Start',
                              ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 58),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
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
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image(
                          width: 40,
                          height: 40,
                          image: AssetImage('assets/images/add_icon.png')),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
