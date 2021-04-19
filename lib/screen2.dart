import 'package:baitap_ui_flutter/screen1.dart';
import 'package:flutter/material.dart';

import 'main.dart';
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.blue,
      child: ElevatedButton(
        child: Text("1231231"),
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Drawer123()));},
      ),
    );
  }
}
