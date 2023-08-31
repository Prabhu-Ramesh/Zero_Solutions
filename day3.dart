// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  Day3({super.key});

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("button 1")),
            SizedBox(height: 20),
            SizedBox(
                width: 140,
                height: 60,
                child:
                    ElevatedButton(onPressed: () {}, child: Text("button 2"))),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: TextField(
                // maxLength: 10,
                onChanged: (val) {
                  name = val;
                },
                onSubmitted: (val) {
                  print("onSubmit Called = $val");

                  setState(() {
                    name = val;
                  });
                },
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    // prefixIcon: Icon(Icons.mail),
                    // prefixText: "+91",
                    // suffixText: "@gmail.com",
                    border: OutlineInputBorder(),
                    labelText: "Name"),
              ),
            ),
            SizedBox(height: 20),
            Text("Name = $name")
          ],
        ),
      ),
      floatingActionButton: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(onPressed: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Day4(name: 'Example'),
            //     ));
            Navigator.pushNamed(context, "/day4-name", arguments: 10);
            // Navigator.pushReplacementNamed(context, "/day4-name");
          })),
    );
  }
}
