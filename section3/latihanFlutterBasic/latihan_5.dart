import 'dart:math';

import 'package:flutter/material.dart';

class latihan_5 extends StatelessWidget {
  const latihan_5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text("Latihan Basic"),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  print("KLIK MORE");
                },
                icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 250,
            height: 250,
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  ) ,
                ),
            ),
          ),
      )
    );
  }
}
