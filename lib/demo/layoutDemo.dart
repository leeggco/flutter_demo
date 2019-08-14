import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StackDemo();
  }
}

class OtherDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // 宽高比小部件
          // AspectRatio(
          //   // 比例16比9
          //   aspectRatio: 16/9,
          //   child: Container(
          //     color: Color.fromRGBO(3, 54, 255, 1),
          //   ),
          // )
          // 带限制的小部件
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1),
            ),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // children: <Widget>[
        //   IconBadge(Icons.pool),
        //   IconBadge(Icons.beach_access),
        //   IconBadge(Icons.airplanemode_active),
        // ],
        children: <Widget>[
          // 一箩筐小部件
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment(1.0, -0.8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                ),
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0)
                      ]
                    )
                    // borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0,),
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0,),
              ),
              Positioned(
                right: 40.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size:12.0,),
              )
              ,
              Positioned(
                right: 40.0,
                top: 50.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size:18.0,),
              )
              ,
              Positioned(
                right: 30.0,
                top: 120.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size:12.0,),
              ),
              Positioned(
                right: 66.0,
                top: 100.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size:17.0,),
              )
            ],
          )
        ],
      ),
    );
    // return Column(
    //   children: <Widget>[
    //     IconBadge(Icons.pool, size: 64.0,)
    //   ],
    // );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}