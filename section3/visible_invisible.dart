import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Invisible Widget"),
        ),
        body: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
            ]),
      ),
    );
  }
}
