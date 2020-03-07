import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://ww1.sinaimg.cn/large/007SS0VXgy1g5sne69wobj30m80goq6w.jpg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            // 装饰
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // 边框
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // 圆角
              // borderRadius: BorderRadius.circular(16.0),
              // 阴影
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                )
              ],
              // 形状
              shape: BoxShape.circle,
              // 渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          )
      ],)
    );
    // return RichText(
    //   text: TextSpan(
    //     text: 'leeggco',
    //     style: TextStyle(
    //       color: Colors.deepPurpleAccent,
    //       fontSize: 34.0,
    //       fontStyle: FontStyle.italic,
    //       fontWeight: FontWeight.w100,
    //     ),
    //     children: [
    //       TextSpan(
    //         text: '.com',
    //         style: TextStyle(
    //           fontSize: 17.0,
    //           color: Colors.grey,
    //         )
    //       )
    //     ]
    //   ),
    // );

    // final TextStyle _textStyle = TextStyle(
    //   fontSize: 16.0
    // );

    // final String _author = '复仇者联盟';
    // final String _title = '最终之战';

    // return Text(
    //   '《$_author》-- $_title。如此看来，漫威的确有重新上映《复仇者联盟4》的计划，只是目前为止迪士尼和漫威并没有正式对此事进行回应。虽然《复仇者联盟4》并没有像《复仇者联盟3》那样有较多的打斗炫酷场景，  bbbvgvreeeed edc不过作为初代复仇者联盟系列的最后一部，其代表着的是一代漫威迷的情怀。',
    //   textAlign: TextAlign.left,
    //   style: _textStyle,
    //   maxLines: 3,
    //   overflow: TextOverflow.ellipsis,
    // );
  }
}