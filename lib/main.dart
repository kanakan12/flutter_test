import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HelloWorld());
  }
}

class HelloWorld extends StatefulWidget {
  @override
  HelloWorldState createState() => HelloWorldState();
}

class HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test12313123")),
      body: Center(
        child: Text("HellWorld", style: TextStyle(fontSize: 50)),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
