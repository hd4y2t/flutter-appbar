import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            "Login Page",
            style: TextStyle(color: Colors.white),
          ),
          // actions: [
          //   IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          //   IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
          // ],
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
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        // icon: Icon(Icons.people),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        fillColor: Colors.lightGreen[100],
                        filled: true,
                        prefixText: "Email : ",
                        prefixStyle: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w600),
                        labelText: "Email",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    // maxLength: 5,

                    // obscureText: true, untuk password
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller,
                  ),
                  Container(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        // icon: Icon(Icons.people),
                        prefixIcon: Icon(
                          Icons.code,
                          color: Colors.green,
                        ),
                        fillColor: Colors.lightGreen[100],
                        filled: true,
                        prefixText: "Password : ",
                        prefixStyle: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w600),
                        labelText: "Password",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    // maxLength: 5,
                    obscureText: true,
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller,
                  ),
                  Text(controller.text)
                ],
              )),
              Container(
                child: buildCard(Icons.input, "Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Card buildCard(IconData iconData, String text) {
  return Card(
    elevation: 5,
    child: Row(
      children: [
        Container(
          height: 30,
          width: 80,
          margin: EdgeInsets.all(5),
          child: Icon(
            iconData,
            color: Colors.green,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    ),
  );
}
