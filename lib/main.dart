import 'package:flutter/material.dart';

void main() {
  runApp(TypesButton());
}

class TypesButton extends StatefulWidget {
  @override
  _TypesButtonState createState() => _TypesButtonState();
}

class _TypesButtonState extends State<TypesButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            alignment: Alignment.center,
            child: DropDown()
        ),
      ),
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
            items: <int>[1,2,3,4,5].
            map<DropdownMenuItem<int>>((e) => DropdownMenuItem<int>(value: e,child: Text('$e'))).toList(),
            value: _dropDownValueDefault,
            onChanged: (int? newValue){
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

