import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login2 extends StatefulWidget{
  const Login2({Key? key}) : super(key:key);

  @override
  State<Login2> createState() => _Login2State();

}
class _Login2State extends State<Login2>{
  var _val2 = false; //checkbox
  String? _str1 ; //RadioListTile
  bool _r1=false; //email
  bool _r2=false; //sms

 // Widget responsivetext(); 

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 80.h,),
        
             Row(
               children: [
                SizedBox(width: 115.w,),
                 Text('Login Verification',
                  
                  style : TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                          color: Color(0xFF06061C),
                        ),),
               ],
             ),
             SizedBox(height: 25.h,),
        
             Padding(
               padding:  EdgeInsets.fromLTRB(28.h,0,32.h,0),
               child: Text('To continue logging in we need you to complete one of the following:',
                        textAlign: TextAlign.center,
                        style : TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400
                        )),
             ),
        
            SizedBox(height: 55.h,),
            
           Padding(
              padding:EdgeInsets.only(left:20.h),
              child: RadioListTile(
                      title: Text("Verification code via email",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400
                      ),),
                      activeColor: Color(0xFF06061C),
                      value: "email",
                      groupValue: _str1,
                  
                      onChanged: ((value) {
                        setState(() {
                          _str1 = value.toString();
                          r1=true;
                          r2=false;
                        });
                      }),
                    ),
            ),
            
           //SizedBox(height: 35.h,),
           Padding(
              padding:EdgeInsets.only(left:20.h),
              child: RadioListTile(
                      title: Text("Verification code via sms",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400
                      ),),
                      activeColor: Color(0xFF06061C),
                      value: "sms",
                      groupValue: _str1,
                  
                      onChanged: ((value) {
                        setState(() {
                          _str1 = value.toString();
                          r1=false;
                          r2=true;
                        });
                      }),
                    ),
            ),
        
            Padding(
                padding:  EdgeInsets.fromLTRB(79.w,0,102.w,0),
                child: responsivetext(),
        
              ),
              SizedBox(height: 25.h,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:79.w),
                    child: Container(
                            decoration: BoxDecoration(
                              color:const Color(0xFF06061C),
                              border: Border.all(color:const Color(0xFF06061C), ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            height: 46.h,
                            width : 140.w,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF06061C),
                                ),
                                child:  Text('Send Code',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14.sp,
                                ),),
                                onPressed: () {
                                  
                                },
                              ),
                            
                        ),
                  ),
                ],
              ),
              SizedBox(height: 75.h,),
        
               Padding(
                    padding:  EdgeInsets.only(left:20.0.w),
                    child: Row(
                      children: [
                        Transform.scale(
                            scale: 1.3,
                            child: Checkbox( //only check box
                                activeColor: Color(0xFF06061C),
                                value: _val2, //unchecked
                                onChanged: (bool? value){
                                  //value returned when checkbox is clicked
                                  setState(() {
                                    _val2 = value!;
                                  });
                                }
                            )
                        ),
                        Text(
                            "   Remember this device",
                            style: TextStyle(fontSize: 18.0.sp,color:Color(0xFF06061C),fontWeight: FontWeight.w400, ),
        
                        ),],),),
        
                        Padding(
                          padding:  EdgeInsets.fromLTRB(75.w,0,106.w,0),
                          child: Text(
                            'Don\'t select this option if you are using a public computer.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
        
                              color: Colors.grey[700],
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                    
                    SizedBox(height: 60.h,),
                    TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor:  Colors.white,
                    ),
                    child:  Text('Return to Login',
                      style: TextStyle(fontSize: 16.sp,color: Colors.deepPurpleAccent,
                      ),),
                    onPressed: () {
                      Navigator. of(context). push(MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                  ),
        
          ],),
        )
      ),
    );
  }
  Widget responsivetext(){
    if(r1){
      return Text('We will be sending a code on your email that can be entered to verify the accout.',
      textAlign: TextAlign.left,
                    style: TextStyle(
        
                      color: Colors.grey[700],
                      fontSize: 15.sp,
                    ),);
    }
    else if(r2){
      return Text("We will be sending a code on your mobile phone which can be entered to verify the account",
      textAlign: TextAlign.left,
                    style: TextStyle(
        
                      color: Colors.grey[700],
                      fontSize: 15.sp,
                    ),);
    }
    else return Text('Select one of the above options for account verification ',
    textAlign: TextAlign.left,
                    style: TextStyle(
        
                      color: Colors.grey[700],
                      fontSize: 15.sp,
                    ),);
  }
}
