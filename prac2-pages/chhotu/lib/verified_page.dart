import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: login()));

enum ProductTypeEnum { Donwloadable, Deliverable }

class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _private = false;
  ProductTypeEnum? _productTypeEnum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                children: <Widget>[
                  Text(
                    'Login Verification',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'To continue logging in we need you to \n      complete one of the following:',
                    style: TextStyle(color: Color.fromARGB(255, 122, 119, 119)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RadioListTile<ProductTypeEnum>(
                      contentPadding: EdgeInsets.all(0.0),
                      value: ProductTypeEnum.Deliverable,
                      groupValue: _productTypeEnum,
                      title: Text('Verification code via email'),
                      onChanged: (val) {
                        setState(() {
                          _productTypeEnum = val;
                        });
                      }),
                  RadioListTile<ProductTypeEnum>(
                      contentPadding: EdgeInsets.all(0.0),
                      value: ProductTypeEnum.Donwloadable,
                      groupValue: _productTypeEnum,
                      title: Text("Verification code via SMS"),
                      onChanged: (val) {
                        setState(() {
                          _productTypeEnum = val;
                        });
                      }),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "we'll sand the code on your mobile phone\nthat can enter to verify your identity",
                      style:
                          TextStyle(color: Color.fromARGB(255, 112, 119, 119)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 50.0),
                    child: new SizedBox(
                      width: 200.0,
                      height: 55.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sand SMS code'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                            value: this._private,
                            onChanged: (value) {
                              setState(() {
                                this._private = value!;
                              });
                            }),
                      ),
                      Text(
                        "Remember this device",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      "Don't select this option if you're using a\npublic computer",
                      style:
                          TextStyle(color: Color.fromARGB(255, 129, 125, 124)),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Return to Login",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
