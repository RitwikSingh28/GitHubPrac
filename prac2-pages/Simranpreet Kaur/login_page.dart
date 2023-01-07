// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login2.dart' ;

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key:key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage> {
  bool _check1 = true;  //for checkbox :keep me logged in
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child : Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
                  child : Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(height:80.h),
               //Login
                       Text(
                          'Login',
                           
                           style: TextStyle(

                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp,
                                  color: Color(0xFF06061C),
                                  ),
                        ),
                       SizedBox(height: 20.h),
               //Create an account : Signup
                       TextButton( onPressed :() { },
                          child :Text(
                          'Create an account',
                           style:TextStyle(
                                 color: Colors.deepPurpleAccent,
                                 fontWeight: FontWeight.w400,
                                 fontSize: 16.sp,
                                 ),)
                        ),
                       SizedBox(height: 23.h,),
              // Username
                      // ignore: prefer_const_constructors
                      Row(children: [
                Padding(
                  padding:  EdgeInsets.only(left :58.w ),
                  child: Text('Username',
                  textAlign:TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                )
              ],),
                     SizedBox(height:5.h),
               //username text field
                      Padding(
                              padding: EdgeInsets.symmetric(horizontal: 58.w),
                              child: Container(
                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.r),
                                     ),
                                    child:  Padding(
                                           padding: EdgeInsets.only(left :25.w),
                                           child : TextField(
                                                  decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Enter your username',
                                                  contentPadding: EdgeInsets.symmetric(vertical: 17.h),
                                                  ),
                                                ),
                                             ),
                                          ),
                              ),
                        SizedBox(height: 30.h,),
                       Row(children: [
                Padding(
                  padding: EdgeInsets.only(left :58.w ),
                  child: Text('Password',
                  textAlign:TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                )
              ],),
                  
                       SizedBox(height: 5.h,),
                //Password text field
                   Padding(
                        padding: EdgeInsets.symmetric(horizontal: 58.w),
                        child: Container(
                        decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child:  Padding(
                        padding: EdgeInsets.only(left: 25.w),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your password ',
                            contentPadding: EdgeInsets.symmetric(vertical: 17.h),
                          ),
                        ),
                      ),
                    ),
                  ),
                     SizedBox(height: 25.h),
            //Login Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 58.w),
                child: Container(
                    decoration: BoxDecoration(
                      color:const Color(0xFF06061C),
                      border: Border.all(color:const Color(0xFF06061C), ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    height: 56.h,
                    width: 302.w,

                    padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF06061C),
                        ),
                        child:  Text('Log In',
                        style: TextStyle(fontSize: 16.sp,
                        ),),
                        onPressed: () {
                          Navigator. of(context). push(MaterialPageRoute(builder: (context)=>const Login2()));
                        },
                      ),
                    
                ),
              ),
              SizedBox(height: 40.h,),
          //CheckBox : keep me logged in
                  Padding(
                    padding:  EdgeInsets.only(left:58.w),
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
                        Text(
                          "Keep me logged in",
                          style: TextStyle(fontSize: 18.sp,)
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 125.h),
          //Forgot Password?
                 TextButton(onPressed: () {},
                  child: Text('Forgot Password?',
                    style:TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                    ),)
                  ),
      ],),
    ),
        ),),);
  }
}



