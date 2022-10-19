import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
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
                      margin: EdgeInsets.only(bottom: 32),
                    ),
                    TaskCardWidget(
                        // title: 'Get Start',
                        ),
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 168, 153, 219),
                        borderRadius: BorderRadius.circular(22.0)),
                    child: Image(
                        width: 40,
                        height: 40,
                        image: AssetImage('assets/images/add_icon.png')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
