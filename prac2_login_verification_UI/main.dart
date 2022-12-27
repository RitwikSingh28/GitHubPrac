import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Loginpage(),
));

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _value=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Create an account',
                style: TextStyle(
                    color: Colors.lightBlue[800],
                    fontSize: 16.0
                ),
              ),
            ),
            SizedBox(height: 30.0),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0,0,0,0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your username',
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0,0,0,0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 65,
                  width: 500,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Log In',
                      style:TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                    ),
                  ),
                ),

                SizedBox(height: 30.0),

                Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.black,
                        value: this._value,
                        onChanged: (value){
                          setState(() {
                            this._value = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      "Keep me logged in",
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),

                SizedBox(height: 120),

                Center(
                  child: Text(
                      'Forgot Password?',
                    style: TextStyle(
                        color: Colors.lightBlue[800],
                        fontSize: 16.0
                    ),
                  ),
                ),
                SizedBox(height: 10.0),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.copyright_outlined,
                        color: Colors.grey[800],
                      ),
                      Text(
                          ' 2001 - 2020 All Rights Reserved',
                          style:TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16.0,
                          )
                      ),
                    ],
                  ),



              ],
            ),


          ],
        ),
      ),
    );
  }
}



