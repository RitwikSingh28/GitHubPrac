import 'package:flutter/material.dart';
import './login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

enum Mode { email, sms }

class _MyAppState extends State<MyApp> {
  bool _tap = false;
  bool firstvalue = false;
  bool secondvalue = false;

  Mode _mode = Mode.email;

  void _check1(bool? value) {
    setState(() {
      firstvalue = value!;
    });
  }

  void _check2(bool? value) {
    setState(() {
      secondvalue = value!;
    });
  }

  void _radio(Mode? value) {
    setState(() {
      _mode = value!;
    });
  }

  void _login() {
    setState(() {
      _tap = true;
    });
  }

  void _restart() {
    setState(() {
      _tap = false;
    });
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: (_tap == false)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 310,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Login Verification",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              height: 5,
                            ),
                          ),
                          Text(
                            "To continue logging in we need you to complete one of the following:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 350,
                      padding: const EdgeInsets.only(top: 60, bottom: 10),
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text(
                              "Verification code via email",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                              ),
                            ),
                            leading: Radio(
                              activeColor: Colors.black,
                              value: Mode.email,
                              groupValue: _mode,
                              onChanged: _radio,
                            ),
                          ),
                          ListTile(
                            title: const Text(
                              "Verification code via SMS",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                              ),
                            ),
                            leading: Radio(
                              activeColor: Colors.black,
                              value: Mode.sms,
                              groupValue: _mode,
                              onChanged: _radio,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 80),
                            width: 350,
                            padding: const EdgeInsets.only(bottom: 30),
                            child: const Text(
                              textAlign: TextAlign.left,
                              "We’ll send a code to your mobile phone that can enter to verify your identity.",
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 110),
                      alignment: Alignment.centerLeft,
                      child: (_mode == Mode.email)
                          ? ElevatedButton(
                              style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () => 3,
                              child: const Text("Send email code"))
                          : ElevatedButton(
                              style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () => 2,
                              child: const Text("Send SMS code"),
                            ),
                    ),
                    Container(
                      width: 350,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        bottom: 0,
                        right: 10,
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            activeColor: Colors.black,
                            value: firstvalue,
                            onChanged: _check1,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Remember this device",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 90),
                      width: 350,
                      padding: const EdgeInsets.only(bottom: 30),
                      child: const Text(
                        textAlign: TextAlign.left,
                        "Don’t select this option if you’re using a public computer",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => _login(),
                      child: const Text("Return to Login"),
                    ),
                  ],
                )
              : Login(
                  selectHandler: _restart,
                  firstvalue: secondvalue,
                  check: _check2,
                ),
        ),
      ),
    );
  }
}
