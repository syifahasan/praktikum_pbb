import 'package:flutter/material.dart';

void main() {
  runApp(SecFour());
}

class SecFour extends StatefulWidget {
  @override
  State<SecFour> createState() => _SecFourState();
}

class _SecFourState extends State<SecFour> {
  // const SecFour({super.key});
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment Apps"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      nilai = nilai - 1;
                      print(nilai);
                      setState(() {
                        
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {
                      nilai = nilai + 1;
                      print(nilai);
                      setState(() {
                        
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
