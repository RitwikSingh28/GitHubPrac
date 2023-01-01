import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  int _value = 1;
  int _value1 = 0;
  String level = "beginner";

  bool valuefirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Center(
              child: Text(
                "Login Verification",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 42,
              ),
              child: Text(
                "To continue logging you need to",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
              ),
              child: Text(
                "complete one of the following:",
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  Radio(
                      value: "beginner",
                      groupValue: level,
                      onChanged: (value) {
                        setState(() {
                          level = value.toString();
                        });
                      }),
                  Text(
                    "verification code via email",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  Radio(
                      value: "advanced",
                      groupValue: level,
                      onChanged: (value) {
                        setState(() {
                          level = value.toString();
                        });
                      }),
                  Text(
                    "verification code via SMS",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "We'll send a code to yout mobile phone that can enter to verify your identity",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 180,
              child: ElevatedButton(
                  child: Text("Send SMS Code"),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 6, 15, 132),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {}),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  SizedBox(height: 45),
                  Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      value: this.valuefirst,
                      activeColor: Color.fromARGB(255, 26, 10, 130),
                      onChanged: (value) {
                        setState(() {
                          this.valuefirst = false || true;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Remember this device',
                    style: TextStyle(
                        color: Color.fromARGB(255, 26, 15, 132), fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Don't select this option if you're using a public computer",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Return to Login",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 8, 18, 162)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
