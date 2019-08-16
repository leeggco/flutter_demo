import 'package:flutter/material.dart';
import 'dart:async';

// 底部滑动窗口
class ButtomSheetDemo extends StatefulWidget {
  @override
  _ButtomSheetDemoState createState() => _ButtomSheetDemoState();
}

class _ButtomSheetDemoState extends State<ButtomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openButtonSheet() {
    _bottomSheetScaffoldKey
      .currentState
      .showBottomSheet((BuildContext context) {
        return BottomAppBar(
          child: Container(
            height: 90,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Icon(Icons.pause_circle_outline),
                SizedBox(width: 16,),
                Text('01:30 / 03: 30'),
                Expanded(
                  child: Text('Fix you - Coldplay', textAlign: TextAlign.right,),
                )
              ],
            ),
          ),
        );
      });
  }

  // 底部向上滑动对话框
  Future _openModelButtonSheet() async {
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              )
            ],
          ),
        );
      }
    );

    debugPrint(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('ButtomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Open ButtonSheet'),
              onPressed: _openButtonSheet,
            ),
            FlatButton(
              child: Text('Model ButtonSheet'),
              onPressed: _openModelButtonSheet,
            )
          ],
        ),
      ),
    );
  }
}