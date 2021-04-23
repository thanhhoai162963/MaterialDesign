import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Switch123(),
      ),
    );
  }
}

class CheckBox123 extends StatefulWidget {
  @override
  _CheckBox123State createState() => _CheckBox123State();
}

class _CheckBox123State extends State<CheckBox123> {
  bool _defaultValue1 = false;
  bool _defaultValue2 = false;
  bool _defaultValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Checkbox(
              value: _defaultValue1,
              onChanged: (bool? newValue) {
                setState(() {
                  _defaultValue1 = newValue!;
                });
              }),
          Checkbox(
            value: _defaultValue2,
            onChanged: (bool? newValue) {
              setState(() {
                _defaultValue2 = newValue!;
              });
            },
          ),
          Checkbox(
            value: _defaultValue3,
            onChanged: (bool? newValue) {
              setState(() {
                _defaultValue3 = newValue!;
              });
            },
          )
        ],
      ),
    );
  }
}

class DateTime123 extends StatefulWidget {
  @override
  _DateTime123State createState() => _DateTime123State();
}

class _DateTime123State extends State<DateTime123> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            _selectDate(context);
          },
          child: Text('Show DateTime Picker'),
        ));
  }

  _selectDate(BuildContext context) async {
    DateTime selectedDateTime = DateTime.now();

    final DateTime picked = (await showDatePicker(
      helpText: "thanh",
      confirmText: "Yes",
      cancelText: "No",
      initialEntryMode: DatePickerEntryMode.input,
      initialDatePickerMode: DatePickerMode.year,
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
      context: context,
      initialDate: selectedDateTime,
      // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ))!;
    if (picked != null && picked != selectedDateTime)
      setState(() {
        selectedDateTime = picked;
      });
  }
}

class Radio123 extends StatefulWidget {
  @override
  _Radio123State createState() => _Radio123State();
}

class _Radio123State extends State<Radio123> {
  NameRadio nameRadio = NameRadio.mot;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Radio<NameRadio>(
              value: NameRadio.mot,
              onChanged: (NameRadio? value) {
                setState(() {
                  nameRadio = value!;
                });
              },
              groupValue: nameRadio,
            ),
            title: Text("mot"),
          ),
          ListTile(
            leading: Radio<NameRadio>(
              value: NameRadio.hai,
              onChanged: (NameRadio? value) {
                setState(() {
                  nameRadio = value!;
                });
              },
              groupValue: nameRadio,
            ),
            title: Text("hai"),
          )
        ],
      ),
    );
  }
}

enum NameRadio {
  mot,
  hai,
}

class Slider123 extends StatefulWidget {
  @override
  _Slider123State createState() => _Slider123State();
}

class _Slider123State extends State<Slider123> {
  double _value = 6;
  RangeValues rangeValues = RangeValues(10, 30);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          divisions: 3,
          inactiveColor: Colors.blue,
          label: "123",
          min: 0,
          max: 100,
          value: _value,
          onChanged: (double newValue) {
            setState(() {
              _value = newValue;
            });
          },
        ),
        RangeSlider(
            values: rangeValues,
            onChanged: (RangeValues values) {
              setState(() {
                rangeValues = values;
              });
            })
      ],
    ));
  }
}

class Switch123 extends StatefulWidget {
  @override
  _Switch123State createState() => _Switch123State();
}

class _Switch123State extends State<Switch123> {
  bool _value = false;
  String text = "";
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                activeColor: Colors.yellow,
                focusColor: Colors.red,
                activeTrackColor: Colors.blue,

                value: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                }),
            textFieldaaa(_textEditingController),
          ],
        ),
      ),
    );
  }
}
Widget textFieldaaa(TextEditingController textEditingController){
  return TextField(
    controller: textEditingController,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.stream),
      hintText: "abc",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
      ),
    ),
  );
}


