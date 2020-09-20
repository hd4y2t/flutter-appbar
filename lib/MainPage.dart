import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
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
              "Page",
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
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFF3FAD7), Color(0xFF60E06B)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images.jpg"),
                                fit: BoxFit.none,
                              )
                              // gradient: LinearGradient(
                              //     colors: [Colors.greenAccent, Colors.lightGreen],
                              //     begin: Alignment.topCenter,
                              //     end: Alignment.bottomCenter)
                              ),
                          child: Material(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Center(
                                    child: Text(
                                  "Back",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600),
                                )),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              )
              // Center(
              //   child: RaisedButton(
              //       color: Colors.green,
              //       child: Text("Back"),
              //       shape: StadiumBorder(),
              //       onPressed: () {
              //         Navigator.pop(context);
              //       }),
              // ),
            ],
          ),
        ));
  }
}
