import 'package:flutter/material.dart';
import 'dart:ui';

class LoginVerification extends StatefulWidget {
  const LoginVerification({Key? key}) : super(key: key);
  @override
  State<LoginVerification> createState() => _VerifyState();
}

class _VerifyState extends State<LoginVerification> {
  String? verify;
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Login Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'To continue complete following steps',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text("Verification code via email"),
                    value: "email",
                    groupValue: verify,
                    onChanged: ((value) {
                      setState(() {
                        verify = value.toString();
                      });
                    }),
                  ),
                  RadioListTile(
                    title: Text("Verification code via SMS"),
                    value: "SMS",
                    groupValue: verify,
                    onChanged: ((value) {
                      setState(() {
                        verify = value.toString();
                      });
                    }),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '  We"ll send a otp to your mobile phone verify your identity',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(83, 4, 1, 8),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 9, 9, 9),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'Send Code',
                      style: TextStyle(
                          color: Color.fromARGB(255, 247, 247, 247),
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
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst =
                            value!; //return the opposite of current bool value on tapping
                      });
                    },
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Remember this device',
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

