import 'dart:io';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: Column(
        children: [
          SizedBox(
            height: 140,
          ),
          Center(
            child: Text(
              "Login",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
          ),
            SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Create an account",
              style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 10, 79, 135)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Username",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your Username",
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(
                        color: Colors.black,
                        width: 3,
                      ))),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 23, 29, 112),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {}),
                ),
                 SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(height: 70),
                   
                    Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      value: this.valuefirst,
                       activeColor: Color.fromARGB(255, 26, 10, 130),

                      onChanged: (value) {
                        setState(() {
                          this.valuefirst = true;
                        });
                      },
                    ),),
                    SizedBox(width: 5),
                    Text(
                      'Keep me logged in',
                      style: TextStyle(
                        color: Color.fromARGB(255, 6, 15, 132),fontSize: 15,fontWeight: FontWeight.w600
                      ),
                    ),
                    
                  ],
                ),
                   SizedBox(height: 70),
                       Center(
                     child: Text(
                      "Forgot password?",
                     style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 10, 79, 135)),
                    ),
                     ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
