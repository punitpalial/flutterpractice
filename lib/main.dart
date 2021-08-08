import 'package:flutter/material.dart';
import 'package:flutter_application_codepur/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pi = 3.14;
    bool isMale = true;

    return MaterialApp(
      home: Homepage(),
    );
  }
}
