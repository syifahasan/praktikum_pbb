import 'package:flutter/material.dart';

class latihan_3 extends StatelessWidget {
  const latihan_3({
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
          child: FlutterLogo(
        size: 200,
      )),
    );
  }
}
