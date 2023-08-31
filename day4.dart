// ignore_for_file: prefer_const_constructors, prefer_conditional_assignment

import 'package:flutter/material.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});
  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  int name = 0;
  @override
  Widget build(BuildContext context) {
    // if (name == 0) name = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text("Day 4 - $name"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Text("Go back")),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: InkWell(
              onTap: () {
                print("pressed on a card");
              },
              splashColor: Colors.red,
              radius: 80,
              child: Card(
                color: Colors.white,
                elevation: 1,
                child: Center(child: Text("card")),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text("Container"),
            ),
          ),
          SizedBox(height: 10),

          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            child: Icon(Icons.mic_off, color: Colors.white),
          )
          // IconButton(
          //     splashColor: Colors.blue,
          //     color: Colors.red,
          //     onPressed: () {
          //       print("IconButton pressed");
          //     },
          //     icon: Icon(Icons.mic_off))
        ],
      ),
    );
  }
}
