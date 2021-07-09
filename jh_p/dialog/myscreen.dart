import 'package:flutter/material.dart';

import 'mywidget.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$title', style: TextStyle(fontSize: 35)),
          FloatingActionButton(
            onPressed: () { 
              showDialog(
                context: context,
                builder: (context) {
                  return MyWidget(
                    writeText: (value) => {
                      setState(() {
                        title = value;
                      })
                    },
                  );
                },
              );
            }
          ),
        ]
      ),
    );
  }
}