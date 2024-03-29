import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,   //主轴的位置
        //crossAxisAlignment: CrossAxisAlignment.start,   //交叉轴的位置
        children: <Widget>[
//          Icon(Icons.pool),
//          Icon(Icons.beach_access),
//          Icon(Icons.airplanemode_active),

        //StackDemo()
//        AspectRatio(
//          aspectRatio: 3.0/2.0, //设置宽高比
//          child: Container(
//            color: Color.fromRGBO(3, 54, 255, 1.0),
//          ),
//        ),
        //带限制的盒子
        ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
          ),
          child: Container(
            color: Color.fromRGBO(3, 54, 255, 1.0),
          ),
        )
        ],
      ),

    );
  }
}
class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Stack可以进行小部件叠加
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0.0, -0.9),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 54, 255, 1.0),
              ]),
            ),
            child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
        ),
        Positioned(
          right: 40.0,
          top: 60.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
        ),
        Positioned(
          right: 20.0,
          top: 120.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
        ),
        Positioned(
          right: 70.0,
          top: 180.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
        ),
        Positioned(
          right: 30.0,
          top: 230.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
        ),
        Positioned(
          right: 90.0,
          bottom: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
        ),
        Positioned(
          right: 4.0,
          bottom: -4.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
        ),
      ],
    );
  }
}