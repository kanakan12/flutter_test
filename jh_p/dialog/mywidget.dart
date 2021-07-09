import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
    MyWidget({
      this.writeText 
    });

  final Function(String)? writeText;
  final TextEditingController textEditCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),
      child: Column(
        children: [
          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              cursorColor: Color(0xff4DD0E1),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                border: InputBorder.none
              ),
              style: TextStyle(fontSize: 20),
              controller: textEditCtrl,
            ),
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color(0xff4DD0E1)
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.fromLTRB(156, 24, 156, 24)
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              )
            ),
            child: Text(
              '완료', 
              style:TextStyle(color: Colors.white, fontSize: 20)
            ),
            onPressed: () => {
              writeText!(textEditCtrl.text),
              Navigator.of(context).pop()
            }
          )
        ],
      )
    );
  }
}