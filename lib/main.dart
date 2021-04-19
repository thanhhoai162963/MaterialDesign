import 'package:baitap_ui_flutter/person.dart';
import 'package:baitap_ui_flutter/screen1.dart';
import 'package:baitap_ui_flutter/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Drawer123());
}

class Drawer123 extends StatefulWidget {
  @override
  _Drawer123State createState() => _Drawer123State();
}

class _Drawer123State extends State<Drawer123> {
  String _information = 'No Information Yet';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("123")),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              )
            ],
          ),
        ),
        endDrawer: Drawer(),
        body: Builder(
          builder: (context) => Center(
              child: ElevatedButton(
                child: Text(_information.toString()),
                onPressed: () {
                  Navigator.canPop(context);
                },
          )),
        ),
      ),
    );
  }
  // void _returnData(context) async{
  //   final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1()));
  //   _updateData(result);
  // }
  // void _updateData(result){
  //   setState(() {
  //     _information = result;
  //   });
  // }
}

