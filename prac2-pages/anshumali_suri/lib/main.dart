import 'package:anshumali_suri/verification.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        body: const MyStatefulWidget(),

      ),
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
        padding: const EdgeInsets.fromLTRB(20, 130, 20, 20),
        child: ListView(
          children: <Widget>[

            Container(

                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Login',

                  style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:  Text(
                  'Create an account',
                  style: TextStyle(fontSize: 20,
                    color: Colors.blueAccent,
                  ),

                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Text(
                    'Username',

                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(

                    controller:_namecontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Enter you username',
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Text(
                    'Password',

                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
              height: 30,
            ),

            Container(
              height: 65,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Log In',
                  style: TextStyle(
                    fontSize: 16,

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
              height: 20,
            ),

            CheckboxListTile(

              activeColor: Colors.grey[800],
              controlAffinity: ListTileControlAffinity.leading,
              title: Transform.translate(
                offset: const Offset(-20, 0),
                child: Text(
                  'Keep me logged in',
                  style: TextStyle(

                    fontSize: 20,
                  ),
                ),
              ),
              value: _value,
              onChanged: (value) => setState(() => this._value = value!),

            ),

            SizedBox(
              height: 150,
            ),

            TextButton(

              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password ?',
                style:TextStyle(
                  fontSize: 16,
                ),
              ),
            ),



          ],
        ));
  }
}
