import 'package:flutter/material.dart';
import './form_login.dart';
enum Mode { email, sms }

class MyHome extends StatefulWidget{
  const MyHome({super.key});

  @override
  State<MyHome> createState()=> _MyHomeState();
}

class _MyHomeState extends State<MyHome>{
  bool firstValue = false;

  Mode _mode = Mode.email;

  void _radio(Mode? value) {
    setState(() {
      _mode = value!;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Column(
                      children:  [
                        const Text(
                          "Login Verification",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            height: 5,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: const [
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
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: const EdgeInsets.only( right: 10),
                          width: MediaQuery.of(context).size.width,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    //margin: EdgeInsets.only(left:10),
                    //alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 25,
                      right: 10,),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 60, right: 30, bottom: 10),
                          width: MediaQuery.of(context).size.width*0.8,
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
                    width: MediaQuery.of(context).size.width*0.7,
                    margin: const EdgeInsets.only(left: 25),
                    padding: const EdgeInsets.only(left: 30, right: 30),
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
                    width: MediaQuery.of(context).size.width*0.8,
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
                          value: firstValue,
                          onChanged: (bool? value) {
                            setState(() {
                              firstValue = value!;
                            });
                          },
                        ),
                        const Text(
                          "Remember this device",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 90),
                    width: MediaQuery.of(context).size.width*0.7,
                    padding: const EdgeInsets.only(left: 10, bottom: 20, right: 10),
                    child: const Text(
                      textAlign: TextAlign.left,
                      "Don’t select this option if you’re using a public computer",
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> Login(),
                        ),
                      );
                    },
                    child: const Text("Return to Login"),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }

}