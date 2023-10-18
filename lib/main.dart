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
          child: Column(
            //height:auto
            // mainAxisSize: MainAxisSize.min,
            //đi từ dưới lên và các thành phần cũng đảo ngược thứ tự
            // verticalDirection: VerticalDirection.up,
            //cả khối col bị đẩy xuống dưới container, nó như kiểu float, hoặc flex-start
            // mainAxisAlignment: MainAxisAlignment.end,
            //cả nội dung nằm giữa container
            // mainAxisAlignment: MainAxisAlignment.center,
            //các phần tử cách đồng đều so với đầu và cuôí
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //space beetween
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Căn theo  bề rộng của cloumn, nếu có 1 phần tử có chiều rộng hơn thì tất cả sẽ tự sắp xếp theo cạnh phải của nhau, luôn đẩy để phần cuối của cột trên trục ngang
            // crossAxisAlignment: CrossAxisAlignment.end,
            //Căn theo bề rộng của cloumn , nếu có 1 phần tử có chiều rộng hơn thì tất cả sẽ tự sắp xếp theo cạnh trái của nhau,luôn đẩy để phần đầy của cột trên trục ngang
            // crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            //kéo các phần tử trong column với width full
            // crossAxisAlignment: CrossAxisAlignment.end, và 1 khối  width: double.infinity, thì nó sẽ đẩy về sát bên phải
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                // margin: const EdgeInsets.all(20),
                //margin:20
                // margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                //margin y 50, maring x 10,
                // margin: const EdgeInsets.fromLTRB(30, 10, 50, 20),
                //margin top left right bot,
                // margin: const EdgeInsets.only(left: 30),
                // padding: const EdgeInsets.all(30),
                height: 100,
                // width: 100,
                //lấp đầy chiều rộng
                width: double.infinity,
                color: Colors.white,
                child: const Text("Container 1"),

//Container kiểu như div,chỉ có 1 child
              ),
              SizedBox(
                height: 20,
              ),
              // tạo khoảng cách giữa các container
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Text("Container 2")),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: const Text("Container 3")),
              // nếu nhuw muốn đẩy 3 phần tử này về bên phải-> tạo 1 vùng chứa vô hình,cho nó chiều rộng voo cực
              Container(
                width: double.infinity,
                height: 10,
              )
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
