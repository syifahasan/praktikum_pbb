import 'package:app_prak/hello_world.dart';
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
          title: Text("Extract Widget"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              KotakWarna(text: "Merah", warna: Colors.red),
              KotakWarna(text: "Kuning", warna: Colors.amber),
              KotakWarna(text: "Hijau", warna: Colors.green),
              KotakWarna(text: "Coklat", warna: Colors.brown),
              KotakWarna(text: "Ungu", warna: Colors.purple),
        
            ],
          ),
        ),
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    super.key,
    required this.text,
    required this.warna,
  });

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna,
      child: Center(child: Text(text)),
    );
  }
}
