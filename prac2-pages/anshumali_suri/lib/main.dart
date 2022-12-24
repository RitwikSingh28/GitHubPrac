import 'package:anshumali_suri/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(425,752),
        builder: (context,child) {
          return MaterialApp(

            home: Scaffold(

              body: const MyStatefulWidget(),

            ),
          );
        }
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _namecontroller.addListener(() {
      final String text = _namecontroller.text.toLowerCase();
      _namecontroller.value = _namecontroller.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });

    _passwordcontroller.addListener(() {
      final String text = _passwordcontroller.text.toLowerCase();
      _passwordcontroller.value = _passwordcontroller.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _namecontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20.w, 50.h, 20.w, 20.h),
        child: ListView(
          children: <Widget>[

            Container(

                alignment: Alignment.center,
                padding:  EdgeInsets.all(10.w),
                child:  Text(
                  'Login',

                  style: TextStyle(

                      fontWeight: FontWeight.w700,
                      fontSize: 30.sp),
                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10.w),
                child:  Text(
                  'Create an account',
                  style: TextStyle(fontSize: 20.sp,
                    color: Colors.blueAccent,
                  ),

                )),
            Padding(
              padding:  EdgeInsets.all(10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Text(
                    'Username',

                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(

                    controller:_namecontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Enter you username',
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Text(
                    'Password',

                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                    obscureText: true,
                    controller: _passwordcontroller,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Enter your password',
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),

            Container(
              height: 65.h,
              padding:  EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 0.h),
              child: ElevatedButton(
                child: Text('Log In',
                  style: TextStyle(
                    fontSize: 16.sp,

                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print(_namecontroller.text);
                  print(_passwordcontroller.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApplication()),
                  );
                },
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            CheckboxListTile(

              activeColor: Colors.grey[800],
              controlAffinity: ListTileControlAffinity.leading,
              title: Transform.translate(
                offset: Offset(-20.sp, 0.sp),
                child: Text(
                  'Keep me logged in',
                  style: TextStyle(

                    fontSize: 20.sp,
                  ),
                ),
              ),
              value: _value,
              onChanged: (value) => setState(() => _value = value!),

            ),

            SizedBox(
              height: 120.h,
            ),

            TextButton(

              onPressed: () {
                //forgot password screen
              },
              child:  Text(
                'Forgot Password ?',
                style:TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),



          ],
        ));
  }
}
