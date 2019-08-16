import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  void _handRadioValueChnaged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue:$_radioGroupA'),
            SizedBox(height: 16,),
            // 带标签的radio
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handRadioValueChnaged,
              title: Text('Options A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handRadioValueChnaged,
              title: Text('Options A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 普通radio
                // Radio(
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _handRadioValueChnaged,
                //   activeColor: Colors.black,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handRadioValueChnaged,
                //   activeColor: Colors.black,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}