import 'package:flutter/material.dart';

//hàm main khởi điểm của ứng dụng
//flutter cấu trúc code bởi 1 cây widget(tree widget)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //build sẽ được gọi bất cứ khi nào mình update widget này
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            // margin: const EdgeInsets.all(20),
            //margin:20
            // margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            //margin y 50, maring x 10,
            // margin: const EdgeInsets.fromLTRB(30, 10, 50, 20),
            //margin top left right bot,
            margin: const EdgeInsets.only(left: 30),
            padding: const EdgeInsets.all(30),
            color: Colors.white,
            child: const Text("Hello World"),
            //Container kiểu như div,chỉ có 1 child
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
