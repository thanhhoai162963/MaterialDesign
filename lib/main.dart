
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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              actions: [
                Text("thanh"),
                Text("thanh"),
              ],
              leading: Text("123"),
              title: Text("thanh"),
              backgroundColor: Colors.greenAccent,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(150),
                child: Container(),
              ),
              floating: true,
              pinned: false,
            ),
            SliverList(delegate: SliverChildListDelegate([
              ListTile(leading: Icon(Icons.volume_off), title: Text("Volume Off"),),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ]))
          ],
        ),
      ),
    );
  }

}

