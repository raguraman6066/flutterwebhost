import 'package:flutter/material.dart';
import 'package:sudarapp/screens/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SigninPage(),
    );
  }
}
