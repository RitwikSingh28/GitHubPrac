import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  bool firstvalue = false;
  final Function check;
  final Function selectHandler;

  Login(
      {super.key,
      required this.selectHandler,
      required this.firstvalue,
      required this.check});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          const Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          TextButton(
            onPressed: () => selectHandler(),
            child: const Text("Create an account"),
          ),
          Container(
            width: 300,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: 280,
                  child: const Text(
                    textAlign: TextAlign.left,
                    textScaleFactor: 1.5,
                    "Username",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 40, top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      labelText: "Enter your username",
                    ),
                  ),
                ),
                Container(
                  width: 280,
                  child: const Text(
                    textAlign: TextAlign.left,
                    textScaleFactor: 1.5,
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 40, top: 20),
                  child: const TextField(
                    obscureText: ,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      labelText: "Enter your password",
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => 3,
                    child: const Text("Log In"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  activeColor: Colors.black,
                  value: firstvalue,
                  onChanged: (bool? value) {
                    check(value);
                  },
                ),
                const Text(
                  "Keep me logged in",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () => selectHandler(),
            child: const Text("Forgot Password?"),
          ),
          const Text(
            textAlign: TextAlign.center,
            "©2001-2020 All Rights Reserved",
            style: TextStyle(
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
