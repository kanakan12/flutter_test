import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyScaffold());
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
              title: Text(
            "Example title",
            style: TextStyle(fontSize: 25),
          )),
          Expanded(
            child: Center(
              child: Text("Hello, world!", style: TextStyle(fontSize: 30)),
            ),
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  // 생성자 생성
  MyAppBar({required this.title});

  // 타이틀 위젯을 선언
  final Text title;

  @override
  Widget build(BuildContext context) {
    // 컨테이너를 구성하여 반환. 컨테이너는 사각형 모양의 앨리먼트들을 생성할 수 있음
    return Container(
      height: 600.0, // 컨테이너의 높이
      padding: const EdgeInsets.symmetric(horizontal: 20.0), // 컨테이너 내부의 패딩값
      decoration: BoxDecoration(color: Colors.blue), // 컨테이너를 파란색으로 꾸밈
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
            onPressed: null,
          ),
          Expanded(
            child: Text(title.data!),
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
    );
  }
}
