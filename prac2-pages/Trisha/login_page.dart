import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _MyLoginState();
  
}

class _MyLoginState extends State<LoginPage> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 173, 197),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.android,
                size: 150,
                color: Color.fromARGB(255, 172, 123, 120),
              ),
              SizedBox(height: 20),
              Text(
                'Hello!',
                style: TextStyle(
                  color: Color.fromARGB(73, 211, 4, 4),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Welcome to this Page!',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 143, 211, 178),
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 143, 211, 178),
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 185, 136, 120),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color.fromARGB(255, 99, 29, 8),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
               children: [ 
                SizedBox(width: 15),
                Checkbox(
                value: this.valuefirst,
                onChanged: (value) {
                  setState(() {
                    this.valuefirst = true;
                  });
                },
              ),
              SizedBox(width: 5),
                
               
        
                  Text('Not a member?'),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      color: Color.fromARGB(255, 30, 42, 169),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
