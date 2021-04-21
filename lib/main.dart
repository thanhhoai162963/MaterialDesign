import 'package:flutter/material.dart';

void main() {
  runApp(TypesButton());
}

class TypesButton extends StatefulWidget {
  @override
  _TypesButtonState createState() => _TypesButtonState();
}

class _TypesButtonState extends State<TypesButton> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        floatingActionButton: Container(
          margin: EdgeInsets.all(30),
          child: FloatingActionButton(
            onPressed: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 10, color: Colors.white))),
                child: Icon(Icons.add)),
            elevation: 10,
            hoverElevation: 2,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        bottomNavigationBar: Container(
          height: 200,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.pinkAccent,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.contacts),
                  title: Text("Contacts"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.mail),
                  title: Text("Emails"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                )
              ],
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
        body: PopUpMenu(),
      ),
    );
  }

  Widget Body() {
    if (_currentIndex == 0) {
      return Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      );
    } else if (_currentIndex == 1) {
      return Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      );
    } else
      return Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int _dropDownValueDefault = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DropdownButton<int>(
            items: <int>[1, 2, 3, 4, 5]
                .map<DropdownMenuItem<int>>(
                    (e) => DropdownMenuItem<int>(value: e, child: Text('$e')))
                .toList(),
            value: _dropDownValueDefault,
            onChanged: (int? newValue) {
              setState(() {
                _dropDownValueDefault = newValue!;
              });
            },
            icon: Icon(Icons.message),
          ),
          //Text(_dropDownValueDefault),
        ],
      ),
    );
  }
}

class FloatingButton extends StatefulWidget {
  @override
  _FloatingButtonState createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: <Widget>[
          FloatingActionButton(onPressed: () {}),
          FloatingActionButton.extended(onPressed: () {}, label: Text("thanh"))
        ],
      )),
    );
  }
}

class IconButton123 extends StatefulWidget {
  @override
  _IconButton123State createState() => _IconButton123State();
}

class _IconButton123State extends State<IconButton123> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                number += 10;
              });
            },
            icon: Icon(
              Icons.volume_down,
              size: 50,
            ),
          ),
          Text('$number'),
        ],
      ),
    );
  }
}

class OutLineButton123 extends StatefulWidget {
  @override
  _OutLineButton123State createState() => _OutLineButton123State();
}

class _OutLineButton123State extends State<OutLineButton123> {
  int a = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            a++;
          });
        },
        child: Text("123"),
      ),
    );
  }
}

class PopUpMenu extends StatefulWidget {
  @override
  _PopUpMenuState createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  var _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            PopupMenuButton(
                itemBuilder: (context) => <PopupMenuEntry>[
                      PopupMenuItem(child: Text("123")),
                      PopupMenuItem(child: Text("123")),
                      PopupMenuItem(child: Text("123")),
                      PopupMenuItem(child: Text("123")),
                    ],
              onSelected: _selected,

            ),
          ],
        )
    );
  }
}
a
