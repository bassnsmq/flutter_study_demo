import 'package:flutter/material.dart';
class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }

}
class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{
  int _currentIndex = 0;
  void _onTapHandler(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        currentIndex: _currentIndex, //控制哪个是激活状态
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed, //底部导航栏的类型
        fixedColor: Colors.black,//选择时的颜色
        //超过四个会变成另一个导航栏类型
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My')
          ),
        ]);
  }


}