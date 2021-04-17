import 'package:flutter/material.dart';
void main() => runApp(BottomNavigationBar123());

class BottomNavigationBar123 extends StatefulWidget {
  @override
  _BottomNavigationBarState123 createState() => _BottomNavigationBarState123();
}

class _BottomNavigationBarState123 extends State<BottomNavigationBar123> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar:
        BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: "thanh"),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: "thanh"),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: "thanh"),
        ],
          backgroundColor: Colors.greenAccent,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (int index){
            onTapHandel(index);
          },
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            if (MediaQuery
                .of(context)
                .orientation == Orientation.portrait && currentIndex == 0) {
              return doc();
            } else
              return ngang();
          },
        ),

      ),
    );
  }
  void onTapHandel(int index){
    setState(() {
      this.currentIndex = index;
    });
  }
}

Widget doc() {
  return Center(
    child: Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
  );
}

Widget ngang() {
  return Center(
    child: Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
  );
}
