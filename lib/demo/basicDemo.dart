import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(children: <Widget>[
        Container(
          child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
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
    //   '《$_author》-- $_title。如此看来，漫威的确有重新上映《复仇者联盟4》的计划，只是目前为止迪士尼和漫威并没有正式对此事进行回应。虽然《复仇者联盟4》并没有像《复仇者联盟3》那样有较多的打斗炫酷场景，不过作为初代复仇者联盟系列的最后一部，其代表着的是一代漫威迷的情怀。',
    //   textAlign: TextAlign.left,
    //   style: _textStyle,
    //   maxLines: 3,
    //   overflow: TextOverflow.ellipsis,
    // );
  }
}