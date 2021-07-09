import 'package:flutter/material.dart';

import '../../lib/../jh_p/dialog/myscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('Test Widget')),
        body: MyScreen()
      )
    );
  }
}
