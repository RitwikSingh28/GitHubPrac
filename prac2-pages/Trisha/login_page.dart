import 'package:flutter/material.dart';
import 'package:myflutter/verification.dart';

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
      backgroundColor: Color.fromARGB(255, 254, 254, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.android,
                size: 150,
                color: Color.fromARGB(255, 10, 10, 10),
              ),
              SizedBox(height: 20),
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
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
                    color: Color.fromARGB(255, 247, 249, 249),
                    border: Border.all(color: Color.fromARGB(255, 214, 205, 205)),
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
                    color: Color.fromARGB(255, 249, 250, 250),
                    border: Border.all(color: Color.fromARGB(255, 197, 191, 191)),
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
                    border: Border.all(color: Colors.grey),
                      color: Color.fromARGB(255, 6, 6, 6),
                      borderRadius: BorderRadius.circular(15)
                      ),
                      height: 60,
                      width:300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF06061C)),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginVerification()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 15),
                  Checkbox(
                    value: valuefirst,
                    onChanged: (value) {
                      setState(() {
                        valuefirst = value!;
                      });
                    },
                  ),
                  SizedBox(width: 1),
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
