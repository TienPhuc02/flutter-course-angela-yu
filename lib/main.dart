import 'package:flutter/material.dart';

//hàm main khởi điểm của ứng dụng
//flutter cấu trúc code bởi 1 cây widget(tree widget)
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("I am Phuc"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiB8giTN9Hj8QAEz4DVdCtqWbfnrKoZSo2nA&usqp=CAU'),
          ),
        ),
      ),
    ),
  );
}
/*
flutter nó hoạt động dựa trên widget(tiện ích) theo mô hình tree, ở đây là widget lớn nhất Material App,
bên trong đó là widget Center chịu trách nhiệm bố trí màn hình giúp đặt 1 cái gì đó ở giữa các widget con (phần tử con) nằm ở giữa, ở đây có 1 widget con là
dòng text hello world
*/
