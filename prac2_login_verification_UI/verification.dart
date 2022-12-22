import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: verification(),
));
class verification extends StatefulWidget {
  const verification({Key? key}) : super(key: key);

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  bool value=true;
  String radio='We’ll send code to your email that you can enter to verify your identity';
  bool isEmail=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,100.0,30.0,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
              child: Center(
                child: Text(
                  'Login Verification',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30.0),

            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,0,0,0),

              child: Text(
                'To continue logging in we need you to complete one of the following: ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40.0,),


            Column(
              children: [
                RadioListTile(
                    title:  Transform.translate(
                      offset: const Offset(-20, 0),
                      child: Text(
                        "Verification code via email",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),

                    activeColor: Colors.black,
                    value:"we will send a code to your Email that can enter to verify your identity",
                    groupValue: radio,
                    onChanged: (value){
                      setState(() {
                        radio=value!;
                        isEmail=true;
                      });
                    }),

                Padding(
                  padding: const EdgeInsets.fromLTRB(55.0,0,15.0,0),
                  child: isEmail?Text(
                    "we will send a code to your Email that can enter to verify your identity",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ): Text('  '),
                ),



                RadioListTile(
                    title:Transform.translate(
                      offset: Offset(-20, 0),
                      child:Text(
                        "Verification code via SMS",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ) ,
                    activeColor: Colors.black,
                    value: "we will send a code to your mobile Phone that can enter to verify your identity",
                    groupValue: radio,
                    onChanged: (value){
                      setState(() {
                        radio=value!;
                        isEmail=false;
                      });
                    }),


                Padding(
                  padding: const EdgeInsets.fromLTRB(55.0,0,15.0,0),
                  child: isEmail?Text('  '):Text(
                    "we will send a code to your mobile Phone that can enter to verify your identity",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),

                SizedBox(height: 35.0,),
                Container(
                  height: 65,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: isEmail?Text('Send Email code',
                      style:TextStyle(
                        fontSize: 18.0,
                      ),
                    ):Text('Send SMS code',
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

                SizedBox(height: 55.0,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0,0,0,0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.black,
                              value: this.value,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                              onChanged: (value){
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Remember this device",
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(60.0,0,35.0,0),
                        child: Text(
                          "Don't select this option if you are using public computer",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),


            SizedBox(height: 110.0,),
            Center(
              child: Text(
                'Return to login',
                style: TextStyle(
                    color: Colors.lightBlue[800],
                    fontSize: 16.0
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

