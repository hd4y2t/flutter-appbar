import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.adb,
              color: Colors.white,
            ),
            title: Text(
              "AppBar Example",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(icon: Icon(Icons.settings), onPressed: () {}),
              IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFBADD20), Color(0xFF12D122)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight),
                image: DecorationImage(
                    image: AssetImage("assets/p5.png"),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat),
              ),
            ),
          ),
        ));
  }
}
