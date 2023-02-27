import 'package:app_prak/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF14918b),
        // backgroundColor: Colors.blue[400],
        body: Center(
          child: Text("Hello WORLD")
        ),
      ),
    );
  }
}
