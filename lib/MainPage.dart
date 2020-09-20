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
              "MainPage",
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
              Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Card(
                      elevation: 10,
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.7,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://moderndiplomacy.eu/wp-content/uploads/2018/03/greenplanet.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                20,
                                50 + MediaQuery.of(context).size.height * 0.35,
                                20,
                                20),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Beautiful Sun",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 25),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Posted on :",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        Text(
                                          "September 20, 2020",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Spacer(
                                        flex: 10,
                                      ),
                                      Icon(
                                        Icons.thumb_up,
                                        color: Colors.grey,
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Text(
                                        "99",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Spacer(
                                        flex: 5,
                                      ),
                                      Icon(Icons.comment, color: Colors.grey),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Text(
                                        "198",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Spacer(
                                        flex: 10,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
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
