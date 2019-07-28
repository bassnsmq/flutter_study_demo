import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child: Text('About'),
              onPressed: (){
                //带有名字的路由跳转
                Navigator.pushNamed(context,'/about');
                //路由跳转
//                Navigator.of(context).push(
//                  MaterialPageRoute(
//                      builder: (BuildContext context) => Page(title: 'About',)
//                  )
//                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
class Page extends StatelessWidget {
  final String title;
  Page({
    this.title
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      //浮动按钮
      floatingActionButton: FloatingActionButton(
        //返回按钮
        child: Icon(Icons.arrow_back),
          onPressed: (){
          //弹出路由
          Navigator.pop(context);
          }),
    );
  }
}

