import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//hàm main khởi điểm của ứng dụng
//flutter cấu trúc code bởi 1 cây widget(tree widget)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                    child: Container(
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/avatar.jpg'),
                        radius: 50,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      child: const Text(
                        "Gumayusi",
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontFamily: "Pacifico"),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: const Text(
                      "flutter developer",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "RobotoMono-VariableFont",
                        color: Colors.tealAccent,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 2,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    color: Colors.tealAccent,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    width: 390,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.teal,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: const Text(
                            "123456789",
                            style: TextStyle(color: Colors.teal, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    width: 390,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.teal,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: const Text(
                            "123456789",
                            style: TextStyle(color: Colors.teal, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
flutter nó hoạt động dựa trên widget(tiện ích) theo mô hình tree, ở đây là widget lớn nhất Material App,
bên trong đó là widget Center chịu trách nhiệm bố trí màn hình giúp đặt 1 cái gì đó ở giữa các widget con (phần tử con) nằm ở giữa, ở đây có 1 widget con là
dòng text hello world
*/
