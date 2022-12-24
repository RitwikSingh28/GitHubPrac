import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main.dart';

void main() => runApp(const MyApplication());

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize: const Size(425,752),
    builder: (context,child) {
      return  MaterialApp(

        home: Scaffold(

          body: MyWidget(),
        ),
      );
    }
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
      padding:  EdgeInsets.all(20.h),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Login Verification',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(30.w, 0.h, 30.w,0.h),
            child: Text(
              'To continue logging in we need you to complete one of the following:',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.sp
              ),
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          RadioListTile(
            title:  Transform.translate(
              offset:  Offset(-20.sp, 0.sp),
              child:Text('Verification code via email',
                style: TextStyle(
                    fontSize: 18.sp
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

          Container(padding: EdgeInsets.fromLTRB(56.w,0.h,50.w,0.h),
            child: isEmail ?
            Text('$radio',style: TextStyle(fontSize: 14.sp,color: Colors.grey[600]),
            ):SizedBox(),
          ),





          RadioListTile(
            title: Transform.translate(
              offset: Offset(-20.sp, 0.sp),
              child: Text('Verification code via SMS',
                style: TextStyle(
                    fontSize: 18.sp
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
            padding: EdgeInsets.fromLTRB(56.w,0.h,50.w,0.h),
            child: isEmail ?SizedBox():
            Text('$radio',style: TextStyle(fontSize: 14,color: Colors.grey[600]),),
          ),


          SizedBox(
            height: 30.h,
          ),

          Container(
            height: 50.h,
            padding: EdgeInsets.fromLTRB(56.w, 0.h, 180.w, 0.h),

            child: ElevatedButton(
              onPressed: (){

              },
              child: Text(
                isEmail?'Send Email OTP':
                'Send SMS code',
                style: TextStyle(
                    fontSize: 16.sp
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(5.h),
                primary: Colors.grey[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 45.h,
          ),

          CheckboxListTile(
              value: changed,
              activeColor: Colors.grey[800],
              controlAffinity: ListTileControlAffinity.leading,
              title: Transform.translate(
                offset: Offset(-20.sp, 0.sp),
                child: Text(
                  'Remember this device',
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
              ),

              onChanged: (val) {
                setState(() {
                  changed = val!;

                });

              }
          ),


            Padding(padding: EdgeInsets.fromLTRB(56.w,0.h,50.w,0.h),
            child: changed?
            Text('$change',style: TextStyle(fontSize: 14.sp,color: Colors.grey[600]),):SizedBox(),
    ),


          SizedBox(
            height: 150.h,
          ),

          TextButton(

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child:  Text(
              'Return To Login',
              style:TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

