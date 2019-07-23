import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        )
      ],
    );
  }

}