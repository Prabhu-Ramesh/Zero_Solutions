// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zero_solutions/services/authService.dart';

class Day5 extends StatefulWidget {
  const Day5({super.key});

  @override
  State<Day5> createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  late double devWidth, devHeight;
  String email = "", password = "";
  @override
  Widget build(BuildContext context) {
    devWidth = MediaQuery.of(context).size.width;
    devHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: devHeight * 0.1),
              Image.asset(
                "assets/mindbox.webp",
                height: 100,
              ),
              SizedBox(height: devHeight * 0.05),
              Text("Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Text("User login Id and password",
                  style: TextStyle(color: Colors.grey)),
              SizedBox(height: devHeight * 0.09),
              rpTextField(
                  hint: "User ID / PAN / Mobile",
                  onChanged: (val) {
                    email = val;
                  }),
              SizedBox(height: 30),
              rpTextField(
                  hint: "Password",
                  suffix: Icon(Icons.visibility_off),
                  onChanged: (val) {
                    password = val;
                  }),
              SizedBox(height: 30),
              Row(
                children: const [
                  Text("Forgot Password ?",
                      style: TextStyle(color: Colors.orange)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?"),
                  Text(" Sign Up >", style: TextStyle(color: Colors.blue[800]))
                ],
              ),
              SizedBox(height: devHeight * 0.08),
              SizedBox(
                width: devWidth * 0.8,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      foregroundColor: Colors.white),
                  onPressed: () async {
                    print("email = $email");
                    print("password = $password");
                    await AuthService().emailSignIn(email, password);
                  },
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget rpTextField(
      {String? hint, Widget? suffix, Function(String)? onChanged}) {
    return TextField(
      onChanged: onChanged,
      obscureText: hint == 'Password',
      decoration: InputDecoration(hintText: hint, suffixIcon: suffix),
    );
  }
}
