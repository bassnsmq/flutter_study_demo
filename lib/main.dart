import 'package:flutter/material.dart';
import 'model/drawer_demo.dart';
import 'model/bottom_navigation_demo.dart';
import 'model/LayoutDemo.dart';
import 'model/basic_demo.dart';
import 'model/listview_demo.dart';
import 'model/sliver_demo.dart';
import 'model/navigator_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: NavigatorDemo(),
      //初始路由
      //initialRoute: '/',
//      routes: {
//        '/': (context) => NavigatorDemo(),
//        '/about': (context) => Page(title: 'About'),
//      },
      home: Home(),
      //home: SliverDemo(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,//顶部工具栏颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//水波纹
        splashColor: Colors.white70,
      ),
    );
  }
}
class Home extends StatelessWidget{
  int _currentIndex = 0;
  void _onTapHandler(int index){

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          //导航栏
//          leading: IconButton(
//              icon: Icon(Icons.menu),//图标
//              tooltip: 'Navigration',//提示
//              onPressed: () => debugPrint('Navigration button is pressed')),//回调函数
          title: Text("NINGHAO"),
          elevation: 0.0,
          centerTitle: true,
          //右边的工具栏
          actions: <Widget>[
            IconButton(
              icon:  Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed'),
            )
          ],
          //顶部导航栏
          bottom: TabBar(
            //未选择标签的颜色
            unselectedLabelColor: Colors.black38,
              //下划线指示器的颜色
              indicatorColor: Colors.black54,
              //下划线指示器的长度
              indicatorSize: TabBarIndicatorSize.label,
              //下划线指示器的宽度
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab (icon: Icon(Icons.local_florist),),
                Tab(icon: Icon(Icons.change_history),),
                Tab(icon:Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt)),
              ]),
        ),
        //选择导航图标的界面
        body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
             // Icon(Icons.local_florist,size: 128.0,color:Colors.black12 ),
              BasicDemo(),
              LayoutDemo(),
              //ViewDemo(),
              SliverDemo(),
              //Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
              //Icon(Icons.directions_bike,size: 128.0,color:Colors.black12,),
            ]),
//        drawer: Container(
//          color: Colors.white,
//          padding: EdgeInsets.all(8.0),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text('This is drawer')
//            ],
//          ),
//        ),
      drawer: drawer_demo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
