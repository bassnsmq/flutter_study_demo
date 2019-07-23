import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return Text(
//      //$ 在字符串中可以拼接字符串
//      '《$_title》-- $_author君不见黄河之水天上来',
//      textAlign: TextAlign.left,
//      style: _textStyle,
//    );
  //Flutter的RichText能实现一段文本应用不同的样式。
//    return RichText(
//      text: TextSpan(
//        text: 'This is ',
//        style: TextStyle(color: Colors.black, fontSize: 18.0),
//        children: <TextSpan>[
//          TextSpan(
//              text: 'bold ',
//              style: TextStyle(fontWeight: FontWeight.bold, )
//          ),
//          TextSpan(
//              text: 'text. '
//          ),
//          TextSpan(
//            text: 'This is ',),
//          TextSpan(
//              text: 'larger ',
//              style:
//              TextStyle(fontSize: 22.0)),
//          TextSpan(
//            text: 'font size.',),
//          TextSpan(
//            text: 'This is ',),
//          TextSpan(
//              text: 'red ',
//              style:
//              TextStyle(color: Colors.red)),
//          TextSpan(
//            text: 'color.',),
//        ],
//      ),
//    );
    //contain容器
    return Container(
      //color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('http://b-ssl.duitang.com/uploads/item/201805/13/20180513224039_tgfwu.png'),
          alignment: Alignment.topCenter,//图片的位置
          fit: BoxFit.cover,
          //colorFilter: 滤镜

        )
      ),
      //行容器
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,  //控制主轴
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white,),//图标
            //color: Color.fromRGBO(3, 54, 255,1.0),
            padding: EdgeInsets.all(16.0), //内边距
            margin: EdgeInsets.all(8.0),   //外边距
            width: 90.0,   //宽度
            height: 90.0,  //高度
            //装饰
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255,1.0),//设置装饰的颜色
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              //borderRadius: BorderRadius.circular(18.0),//设置圆角
              //设置阴影
              boxShadow: [
                BoxShadow(
                  offset:Offset(6.0, 7.0),//第一个参数控制的是x的偏移量，第二个参数控制的是y的偏移量
                  //color:控制阴影的颜色
                  //blurRadius:20.0   这个值越大，模糊程度就会越高
                  //spreadRadius: 6.0   阴影的扩散程度
                ),
              ],
              shape: BoxShape.circle,//在使用BoxShape.circle不能使用borderRadius
//              gradient: RadialGradient(
//                  colors: [
//                    Color.fromRGBO(7, 102, 255,1.0),
//                    Color.fromRGBO(3, 28, 128, 1.0),
//                  ]),
            gradient: LinearGradient(
                colors:[
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
//                begin: Alignment.topCenter,
//                end:Alignment.bottomCenter,
            )
            ),
          ),
        ],
      ),
    );
  }

}