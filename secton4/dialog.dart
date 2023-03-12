import 'package:flutter/material.dart';
import 'package:section_4/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: Text("Ini Judul"),
                      actions: [
                        ElevatedButton(onPressed: () {}, child: Text("OK")),
                        ElevatedButton(onPressed: () {}, child: Text("CANCEL"))
                      ],
                      content: Text(
                          "Ini adalah desc dialog, kamu bisa lihat disini"),
                    ));
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
