import 'package:flutter/material.dart';

void main() {
  runApp(SyifaApp());
}

class SyifaApp extends StatelessWidget {
  const SyifaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text("Aplikasi Praktikum"),
          centerTitle: false,
        ),
        body: Center(

          /* CONTAINER DAN FLUTTER LOGO */
          // child: Container(
          //   width: 200,
          //   height: 200,
          //   color: Colors.grey,
          //   child: FlutterLogo(
          //     size: 100,
          //   ),
          // ),

          /* ELEVATED BUTTONS */
          // child: ElevatedButton(
          //   onPressed: () {
          //     print("KLIK");
          //   },
          //   child: Text("Klik disini")
          // ),

          /* WIDGET ICON */
          // child: Icon(
          //   Icons.home,
          //   size: 200,
          //   color: Colors.blue[200],
          // ),

          /* IMAGE WIDGET (1. Asset Image, 2. Network Image, 3. File Image, 4. Memory Image)*/
          child: Image(
            image: AssetImage("img/sponge.jpg"),
          ),
        ),
      ),
    );
  }
}
