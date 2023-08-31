// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  late double devWidth, devHeight;

  // List names = ["Prabhu R", "Arun S", "Hari", "nameee"];
  Map details = {"Prabhu R": 21, "Arun S": 20, "Hari": 19};
  @override
  Widget build(BuildContext context) {
    devWidth = MediaQuery.of(context).size.width;
    devHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: devWidth * 0.7,
            color: Colors.red,
          ),
          ElevatedButton(
              onPressed: () {
                // print("devWidth = $devWidth");
                print("devHeight = $devHeight");
              },
              child: Text("get size")),
          SizedBox(height: 10),
          // ListTile(
          //   onTap: () {},
          //   leading: Icon(Icons.ac_unit),
          //   title: Text("Title"),
          //   subtitle: Text("Subtitle"),
          //   trailing: Icon(Icons.more_vert),
          // ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: details.length,
              itemBuilder: (context, index) {
                int newIndex = index + 1;
                return Row(
                  children: [
                    tableText("${details.keys.elementAt(index)}"),
                    tableText("${details.values.elementAt(index)}")
                    // tableText("5"),
                    // tableText("${newIndex * 5}")
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget tableText(String s) {
    return Container(
      width: 100,
      decoration: BoxDecoration(border: Border.all()),
      child: Center(
        child: Text(
          s,
        ),
      ),
    );
  }
}
