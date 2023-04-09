import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> insertrecord() async {
    if (name.text == "" || email.text == "" || password.text == "") {
      try {
        String uri = "http://10.0.2.2/practice_api/insert_record.php";
        var res = await http.post(
          Uri.parse(uri),
          body: {
            "name": name.text,
            "email": email.text,
            "password": password.text
          },
        );
        var response = json.decode(res.body);
        if (response['success'] == 'true') {
          print("Record inserted");
        } else {
          print("some issue");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("Please fill all fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Insert Record'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Insert Name'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Insert Email'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Insert Password'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  insertrecord();
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
