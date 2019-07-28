import 'package:flutter/material.dart';
import "package:flutter_study/model/Post.dart";
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
        SliverAppBar(
        //title: Text("NingHao"),
         // pinned: true,//固定位置，上滑不会消失
          floating: true,//浮动位置，上滑会消失
          expandedHeight: 178.0,//高度
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "nihao Flutter".toUpperCase(),
              style: TextStyle(
                fontSize: 15.0,//文字大小
                letterSpacing: 3.0,//文字间距
                fontWeight: FontWeight.w400 //宽度
              ),
            ),
            background: Image.network("http://pic59.nipic.com/file/20150126/4546121_191503490000_2.jpg",
            fit: BoxFit.cover,)
          ),
    ),
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(20.0),
            //sliver: SliverGridDemo(),
            sliver: SliverGridDemo(),
          ),
        )
      ],
    ),
    );
  }
}
class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        //控制网格视图的比例
        childAspectRatio: 2.0,
      ),
      delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
            return Container(
              child: Image.network(posts[index].imageUrl,
                fit: BoxFit.cover,),//posts[index].imageUrl
            );
          },
          childCount: posts.length //设置显示数量  posts.length
      ),
    );
  }
}
class SliverListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
            return Padding(
              padding: EdgeInsets.only(bottom: 32.0),
              child: Material(
                borderRadius: BorderRadius.circular(12.0),//控制圆角
                elevation: 14.0,//阴影大小
                shadowColor: Colors.grey.withOpacity(0.5),//控制阴影颜色
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: Image.network(posts[index].imageUrl,
                        fit: BoxFit.cover,),//posts[index].imageUrl
                    ),
                    Positioned(
                      top: 32.0,
                      left: 32.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            posts[index].title,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            posts[index].author,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: 6 //设置显示数量  posts.length
      ),
    );
  }
}