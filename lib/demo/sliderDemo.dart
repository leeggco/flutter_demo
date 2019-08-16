import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SlideDemo extends StatefulWidget {
  @override
  _SlideDemoState createState() => _SlideDemoState();
}

class _SlideDemoState extends State<SlideDemo> {
  double _slideItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlideDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 带标签的switch
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 普通slide
                Slider(
                  value: _slideItemA,
                  onChanged: (value) {
                    setState(() {
                      _slideItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.1),
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  label: '${_slideItemA.toInt()}',
                )
              ],
            ),
            Text('SlideValue: $_slideItemA'),
          ],
        ),
      ),
    );
  }
}