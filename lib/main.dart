import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Drawer123());
}

class Drawer123 extends StatefulWidget {
  @override
  _Drawer123State createState() => _Drawer123State();
}

class _Drawer123State extends State<Drawer123> {
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
                onTap: (){Navigator.of(context).pop();},
              ),

              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
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
          builder:(context) => Center(
              child: ElevatedButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                child: Text("gọi drawer"),
              )),
        ),
      ),
    );
  }
}
