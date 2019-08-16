import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 9, minute: 24);

  Future<void> _selectDate() async {
    // 日期选择器
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if(date == null) return;

    setState(() {
      selectedDate = date;
    });
  }

  Future<void> _selectTime() async {
    // 时间选择器
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (time == null) return;

    setState(() {
      selectedTime = time;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 日期
                InkWell(
                  onTap: _selectDate,
                  child: Row(children: <Widget>[
                    Text(DateFormat.yMMMMd().format(selectedDate)),
                    // Text(DateFormat.yMd().format(selectedDate)),
                    Icon(Icons.arrow_drop_down)
                  ],),
                ),
                // 时间
                InkWell(
                  onTap: _selectTime,
                  child: Row(children: <Widget>[
                    Text(selectedTime.format(context)),
                    // Text(DateFormat.yMd().format(selectedDate)),
                    Icon(Icons.arrow_drop_down)
                  ],),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}