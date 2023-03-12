import 'package:flutter/material.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: emailC,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                label: Text("Email"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: passwordC,
              autocorrect: false,
              obscureText: isHidden,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                prefixIcon: Icon(Icons.vpn_key),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                label: Text("Password"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                print(
                    "Login dengan : email (${emailC.text}), password (${passwordC.text})");
              },
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[500],
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ],
        )
      );
  }
}
