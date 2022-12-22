import 'package:flutter/material.dart';

import 'main.dart';

void main() => runApp(const MyApplication());

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String radio='We’ll send code to your email that you can enter to verify your identity';
  bool isEmail=true;
  bool value=false;
  bool changed=false;
  String change='Don’t select this option if you’re using a public computer';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Login Verification',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(40, 0, 40,0),
            child: Text(
              'To continue logging in we need you to complete one of the following:',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          RadioListTile(
            title:  Transform.translate(
              offset: const Offset(-20, 0),
              child:Text('Verification code via email',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            value: 'We’ll send code to your email that you can enter to verify your identity',
            groupValue: radio,
            activeColor: Colors.grey[800],
            onChanged: (val){
              setState(() {
                radio=val!;
                isEmail=true;
              });
            },
          ),

          Container(padding: EdgeInsets.fromLTRB(56,0,50,0),
            child: isEmail ?
            Text('$radio',style: TextStyle(fontSize: 14,color: Colors.grey[600]),
            ):SizedBox(),
          ),





          RadioListTile(
            title: Transform.translate(
              offset: const Offset(-20, 0),
              child: Text('Verification code via SMS',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            value: 'We’ll send a code to your mobile phone that can enter to verify your identity.',
            groupValue: radio,
            activeColor: Colors.grey[800],
            onChanged: (val){
              setState(() {
                radio=val!;
                isEmail=false;
              });
            },
          ),

          Container(
            padding: EdgeInsets.fromLTRB(56,0,50,0),
            child: isEmail ?SizedBox():
            Text('$radio',style: TextStyle(fontSize: 14,color: Colors.grey[600]),),
          ),


          SizedBox(
            height: 30,
          ),

          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(56, 0, 180, 0),

            child: ElevatedButton(
              onPressed: (){

              },
              child: Text(
                isEmail?'Send Email OTP':
                'Send SMS code',
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(5),
                primary: Colors.grey[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 78,
          ),

          Container(

            child: CheckboxListTile(
                value: changed,
                activeColor: Colors.grey[800],
                controlAffinity: ListTileControlAffinity.leading,
                title: Transform.translate(
                  offset: const Offset(-20, 0),
                  child: Text(
                    'Remember this device',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),

                onChanged: (val) {
                  setState(() {
                    changed = val!;

                  });

                }
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(56,0,50,0),
            child: changed?
            Text('$change',style: TextStyle(fontSize: 14,color: Colors.grey[600]),):SizedBox(),
          ),


          SizedBox(
            height: 250,
          ),

          TextButton(

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text(
              'Return To Login',
              style:TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

