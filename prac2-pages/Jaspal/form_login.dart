import 'package:flutter/material.dart';

class Login extends StatefulWidget{

  Login(
      {super.key,
        //required this.selectHandler,
        //required this.firstValue,
      });
  @override
  State<Login> createState()=> _LoginState();
}
class _LoginState extends State<Login>{
  final formKey = GlobalKey<FormState>();

  bool firstValue = false;
  @override
  build(BuildContext context){
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child:Form(
              key: formKey,
              child: Container(
                padding: const EdgeInsets.only(top: 50),
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
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: const Text("Create an account"),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 280,
                            child: Text(
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
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "abc@E123",
                                labelText: "Enter your username",
                              ),
                              validator: (value){
                                if(value!.isEmpty) {
                                  return  "UserName can't be empty";
                                }
                                if(!RegExp(r'^[a-z A-Z]+[@]+[a-z A-Z 0-9]+$').hasMatch(value)){
                                  return "Enter correct username";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 280,
                            child: Text(
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
                            child:  TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                hintText: "Password",
                                labelText: "Enter your password",
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Password can't be empty";
                                }
                                if(value.length<5){
                                  return "Password length can't be less than 5";
                                }
                                if(!RegExp(r'^[0-9]+$').hasMatch(value)){
                                  return "only numerics are allowed";
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
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
                              onPressed: (){
                                if(formKey.currentState!.validate()){
                                  return;
                                }
                              },
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
                            value: firstValue,
                            onChanged: (bool?value){
                              setState(() {
                                firstValue=value!;
                              });
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
                      onPressed: (){
                        Navigator.pop(context);
                      },
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}