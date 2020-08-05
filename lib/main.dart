import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.adb),
                    prefixIcon: Icon(Icons.person),
                    prefixText: "Nama :",
                    prefixStyle: TextStyle(color: Colors.white),
                    labelText: "Nama Lengkap",
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: "Nama Lengkap",
                    hintStyle: TextStyle(fontSize: 10),
                    suffix: Icon(Icons.access_alarm),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                maxLength: 11,
                maxLines: 1,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
