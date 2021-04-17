import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(156, 39, 176, 1),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          title: Text("thanh"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
          ),
          bottom: PreferredSize(
            child: Container(
              height: 1,
              color: Colors.red
            ),
            preferredSize: const Size.fromHeight(80.0),

          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: index,
          onTap: (int index){
            this.onTapHandler(index);
          },
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints boxConstraints) {
          if (MediaQuery.of(context).orientation == Orientation.portrait && index ==0) {
            return doc(context);
          } else
            return ngang();
        }),
      ),
    );
  }
  void onTapHandler(int index)  {
    this.setState(() {
      this.index = index;
    });
  }
}

Widget doc(context) {
  return Container(
    color: Color.fromRGBO(156, 39, 176, 0.5),
    constraints: BoxConstraints.expand(),
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: CircleAvatar(
            child: Icon(Icons.person, size: 40),
            backgroundColor: Color.fromRGBO(156, 39, 176, 1),
            radius: 30,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "mời nhập",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 3,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.purple,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "mời nhâp",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 3,
                          )),
                      prefixIcon: Icon(
                        Icons.lock_clock,
                        color: Colors.purple,
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );

}

Widget ngang() {
  return Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  );
}
Widget screen1() {
  return Container(
    width: 100,
    height: 100,
    color: Colors.red,
  );
}
Widget screen2() {
  return Container(
    width: 100,
    height: 100,
    color: Colors.yellow,
  );
}
Widget screen3() {
  return Container(
    width: 100,
    height: 100,
    color: Colors.orange,
  );
}
