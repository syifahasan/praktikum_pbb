import 'dart:math';

import 'package:flutter/material.dart';

class latihan_4 extends StatelessWidget {
  const latihan_4({
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
            child: Transform.rotate(
          // 90 derajat = pi / (180 / 90)
          angle: pi / 2,
          child: FlutterLogo(
            size: 200,
          ),
        )));
  }
}
