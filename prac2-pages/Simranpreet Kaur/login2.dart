import 'package:flutter/material.dart';
import 'login_page.dart';

class Login2 extends StatefulWidget{
  const Login2({Key? key}) : super(key:key);

  @override
  State<Login2> createState() => _Login2State();

}
class _Login2State extends State<Login2>
{ var _val2 = false;
  String? _str1 ;
  var _check = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child :Center(
          child:Column(
            children:  [
              SizedBox(height: 55,),
              //Login Verification
              Text('Login Verification',
              style : TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF06061C),
              )),
              SizedBox(height: 25,),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25,10,25,10),
                  child: Text('To continue logging in we need you to complete one of the following:',
                  textAlign: TextAlign.center,
                  style : TextStyle(
                    fontSize: 20,
                  )),
                ),
              ),
                SizedBox(height:25 ,),

              RadioListTile(
                title: Text("Verification code via email"),
                activeColor: Color(0xFF06061C),
                value: "email",
                groupValue: str1,
                onChanged: ((value) {
                  setState(() {
                    str1 = value.toString();
                  });
                }),
              ),
              RadioListTile(
                title: Text("Verification code via SMS"),
                activeColor: Color(0xFF06061C),
                value: "SMS",
                groupValue: str1,
                onChanged: ((value) {
                  setState(() {
                    str1 = value.toString();
                  });
                }),
              ),



          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(60,0,25,10),
            child: Text(
                'We\'ll send a code to your mobile phone that can be entered to verify your identity.',
                textAlign: TextAlign.left,
                style: TextStyle(

                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),

          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,210,0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFF06061C),
                  borderRadius: BorderRadius.circular(15)
                  ),
                height : 50,
                width : 150,
              child:  SizedBox(
                width: 600.0,
                height: 250.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF06061C),
                    ),
                    child: const Text('Send Code',
                      style: TextStyle(fontSize: 12,
                      ),),
                    onPressed: () {

                    },
                  ),
              ),

            ),
          ),
          SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Row(
                  children: [
                    Transform.scale(
                        scale: 1.3,
                        child: Checkbox( //only check box
                            activeColor: Color(0xFF06061C),
                            value: val2, //unchecked
                            onChanged: (bool? value){
                              //value returned when checkbox is clicked
                              setState(() {
                                val2 = value!;
                              });
                            }
                        )
                    ),
                    Text(
                        "   Remember this device",
                        style: TextStyle(fontSize: 15.0,color:Color(0xFF06061C),fontWeight: FontWeight.bold, ),

                    ),],),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,0,25,10),
                      child: Text(
                        'Don\'t select this option if you are using a public computer.',
                        textAlign: TextAlign.left,
                        style: TextStyle(

                          color: Colors.grey[700],
                          fontSize: 15,
                        ),
                      ),
                    ),
              SizedBox(height: 80,),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor:  Colors.white,
                ),
                child: const Text('Return to Login',
                  style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent,
                  ),),
                onPressed: () {
                  Navigator. of(context). push(MaterialPageRoute(builder: (context)=>LoginPage()));
                },
              ),
          ],
        ),
      ),),);


  }
}