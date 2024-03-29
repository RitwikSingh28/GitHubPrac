import 'package:flutter/material.dart';
import 'package:myflutter/verification.dart';
import 'login_page.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color.fromARGB(255, 212, 212, 195),
      home: LoginPage(),
    );
  }
}

