import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/screens/Screen3.dart'; // Import Firebase Authentication

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.red, // You can change the color
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  child: Image.asset(
                    "Assets/Image.png",
                  ),
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(90, 200, 0, 0),
            height: 400,
            width: 350,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Sign Up", // Change the title to Sign Up
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email", // Change to Email
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Email', // Change hint
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Change color
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Change color
                                width: 2.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 200,
            height: 50,
            margin: EdgeInsets.fromLTRB(165, 570, 0, 0),
            child: ElevatedButton(
              onPressed: () async {
                try {
                  await _auth.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  // User signed up successfully. You can add additional code here.
                } catch (e) {
                  print(
                      "Error: $e"); // Handle any errors that occur during sign-up.
                }
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen3(),
                    ));
              },
              child: Text("Sign Up"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
