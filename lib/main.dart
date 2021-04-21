import 'package:flutter/material.dart';

void main(){
  runApp(TabBar123());
}

class TabBar123 extends StatefulWidget {
  @override
  _TabBar123State createState() => _TabBar123State();
}

class _TabBar123State extends State<TabBar123> with TickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,

            tabs: [
            Tab(child: Text("123"),),
            Tab(child: Text("123"),),
            Tab(child: Text("123"),),
            Tab(child: Text("123"),),
          ],
          ),
        ),
        body: Container(
          child: TabBarView(
              controller: _tabController,
              children: [
            Text("123"),
            Text("123"),
            Text("123"),
            Text("123"),
          ]),
        ),
      ),
    );
  }
}
