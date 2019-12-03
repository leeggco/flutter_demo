import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 带标签的switch
            SwitchListTile(
              value: _switchItemA,
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 普通switch
                // Text(_switchItemA ? '😊' : '😢', style: TextStyle(fontSize: 32),),
                // Switch(
                //   value: _switchItemA,
                //   // null 为禁用状态
                //   onChanged: (value) {
                //     setState(() {
                //       _switchItemA = value;
                //     });
                //   },
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}