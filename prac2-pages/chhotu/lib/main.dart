import 'package:flutter/material.dart';
import 'package:project1/verified_page.dart';

void main() => runApp(const MaterialApp(
      home: login(),
    ));

class Project extends StatefulWidget {
  const Project({super.key});
  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool _private = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 200.0, left: 135.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black, fontSize: 20.0, height: 1.0),
                  ),
                  Text(
                    'Create new account',
                    style: TextStyle(height: 3, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 20.0,
                    left: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 270.0),
                      child: Text(
                        'Username',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your Username',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 270.0),
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter your password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    new SizedBox(
                      width: 400.0,
                      height: 55.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Log In'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                              value: this._private,
                              onChanged: (value) {
                                setState(() {
                                  this._private = value!;
                                });
                              }),
                        ),
                        Text(
                          "Keep me logged in",
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "@2001-2020 All Rights Resived",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
