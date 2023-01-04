// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'login2.dart' ;

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key:key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage> {
  bool _check1 = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child : SingleChildScrollView(
                child : Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(height:55),
             //Login
                    const Text(
                        'Login',
                         
                         style: TextStyle(

                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color(0xFF06061C),
                                ),
                      ),
                    const SizedBox(height: 25),
             //Create an account : Signup
                    const Text(
                        'Create an account',
                         style:TextStyle(
                               color: Colors.deepPurpleAccent,
                               fontWeight: FontWeight.normal,
                               fontSize: 20,
                               ),
                      ),
                    const SizedBox(height: 30,),
            // Username
                    // ignore: prefer_const_constructors
                    Row(children: [
              Padding(
                padding: const EdgeInsets.only(left :20 ),
                child: Text('Username',
                textAlign:TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
              )
            ],),
                   const SizedBox(height:7),
             //username text field
                    Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Container(
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                   ),
                                  child: const Padding(
                                         padding: EdgeInsets.only(left: 20.0),
                                         child : TextField(
                                                decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Enter your username',
                                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                                ),
                                              ),
                                           ),
                                        ),
                            ),
                     const SizedBox(height: 30,),
                     Row(children: [
              Padding(
                padding: const EdgeInsets.only(left :20 ),
                child: Text('Password',
                textAlign:TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
              )
            ],),
                
                      const SizedBox(height: 7,),
              //Password text field
                 Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                      decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your password ',
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                   const SizedBox(height: 30),
          //Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  decoration: BoxDecoration(
                    color:const Color(0xFF06061C),
                    border: Border.all(color:const Color(0xFF06061C), ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50,

                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: SizedBox(
                    width: 600.0,
                    height: 250.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF06061C),
                      ),
                      child: const Text('Log In',
                      style: TextStyle(fontSize: 20,
                      ),),
                      onPressed: () {
                        Navigator. of(context). push(MaterialPageRoute(builder: (context)=>const Login2()));
                      },
                    ),
                  )
              ),
            ),
            const SizedBox(height: 20,),
        //CheckBox : keep me logged in
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox( //only check box
                          activeColor: const Color(0xFF06061C),
                            value: _check1, //unchecked
                            onChanged: (bool? value){
                              //value returned when checkbox is clicked
                              setState(() {
                                _check1 = value!;
                              });
                            }
                        )
                      ),
                      const Text(
                        "Keep me logged in",
                        style: TextStyle(fontSize: 18.0,)
                      ),
                    ],
                  ),
                ),
            const SizedBox(height: 20),
        //Forgot Password?
                const Text('Forgot Password?',
                  style:TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
      ],),
    ),),);
  }
}