import 'package:flutter/material.dart';

class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: ,显示在界面顶部的一个AppBar
      //body: ,当前界面所显示的主要内容Widget
      //floatingActionButton: ,Material设计中所定义的FAB，界面的主要功能按钮
      //persistentFooterButtons: <Widget>[],固定在下方显示的按钮，比如对话杠下方的确定，取消按钮
      //drawer: ,抽屉菜单控件
      //backgroundColor: ,内容的背景颜色，默认使用的是ThemeData.scaffoldBackgroundColor的值
      //bottomNavigationBar: ,显示在页面底部的导航栏
      //resizeToAvoidBottomPadding: ,类似于 Android 中的 android:windowSoftInputMode=‘adjustResize’，
                                        // 控制界面内容 body 是否重新布局来避免底部被覆盖了，
                                           // 比如当键盘显示的时候，重新布局避免被键盘盖住内容。默认值为 true。
    body: CustomScrollView(
      slivers: <Widget>[

      ],
    ),
    );
  }
}