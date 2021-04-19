import 'package:baitap_ui_flutter/person.dart';
import 'package:baitap_ui_flutter/screen2.dart';
import 'package:flutter/material.dart';
import 'package:baitap_ui_flutter/main.dart';

class Screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.canPop(context);
            },
            child: Text("123"),
          ),
          Text("thanh"),
        ],
      ),
    );
  }
}
