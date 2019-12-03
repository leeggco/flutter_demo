import 'package:flutter/material.dart';

class ButtomDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 案例1
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    // 案例2
    final Widget raisedButtomDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // 设置形状
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5)
              // )
              shape: StadiumBorder(),
            )
          ),
          child: // RaisedButton 默认带填充颜色
            RaisedButton(
              child: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey,
              elevation: 0,
              // color: Theme.of(context).accentColor,
              // textColor: Theme.of(context).accentColor,
              // textTheme: ButtonTextTheme.primary,
            ),
        ),
        SizedBox(width: 16,),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          elevation: 12,
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    // 案例3 描边按钮
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // 设置形状
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5)
              // )
              shape: StadiumBorder(),
            )
          ),
          child: // RaisedButton 默认带填充颜色
            OutlineButton(
              child: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey,
              borderSide: BorderSide(
                color: Colors.black,
              ),
              textColor: Colors.black,
              highlightedBorderColor: Colors.grey,
              // color: Theme.of(context).accentColor,
              // textColor: Theme.of(context).accentColor,
              // textTheme: ButtonTextTheme.primary,
            ),
        ),
        SizedBox(width: 16,),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    // 案例4 Flex 按钮
    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 沾满空间组件
        Expanded(
          // width: 130,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // color: Theme.of(context).accentColor,
            // textColor: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16,),
        // 沾满空间组件
        Expanded(
          flex: 2,
          // width: 130,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // color: Theme.of(context).accentColor,
            // textColor: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        )
      ],
    );

    // 案例 buttonBar 
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32)
            )
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
                // color: Theme.of(context).accentColor,
                // textColor: Theme.of(context).accentColor,
                // textTheme: ButtonTextTheme.primary,
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
                // color: Theme.of(context).accentColor,
                // textColor: Theme.of(context).accentColor,
                // textTheme: ButtonTextTheme.primary,
              ),
            ],
          )
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtomDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtomDemo,
            outlineButtonDemo,
            expandedButtonDemo,
            buttonBarDemo
          ],
        ),
      ),
    );
  }
}
