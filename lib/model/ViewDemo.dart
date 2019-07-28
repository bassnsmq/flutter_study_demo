import 'package:flutter/material.dart';
import 'package:flutter_study/model/Post.dart';
class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return GridViewBuilderDemo();
    return PageViewBuilderDemo();
  }

}
class GridViewBuilderDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(posts[index].imageUrl,//post[index].url
      fit: BoxFit.cover),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: 3,//posts.lengty
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),//SliverGridDelegateWithFixedCrossAxisCount相当于GridView.Count
        itemBuilder: _gridItemBuilder,);
  }
}
class GridViewExtentDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index',style: TextStyle(fontSize: 18.0,color: Colors.grey)),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16.0,//交叉间距
      mainAxisSpacing: 18.0,//主轴间距
      //scrollDirection: Axis.horizontal,//水平滚动
      //scrollDirection: Axis.vertical,//竖直滚动
      children: _buildTiles(100),
    );
  }
}
class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      //pageSnapping: false,翻到一定程度，不会自动翻页
      //reverse: true,是否页面倒置
      //scrollDirection: Axis.vertical,页面竖直滚动
      //scrollDirection: Axis.horizontal,页面横向滚动（默认）
      onPageChanged: (currentPage)=> debugPrint("Page:$currentPage"),//页面滚动回调函数
      //页面控制器
      controller: PageController(
          initialPage: 1, //初始化界面的索引号
          keepPage: false, //不想记住用户滚动到的当前页面
          viewportFraction: 0.85 //占比85%
      ),
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[100],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blue[100],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
      ],
    );
  }
}
class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      itemBuilder:_pageItemBuilder);
  }
    Widget _pageItemBuilder(BuildContext context, int index) {
      return Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,),//post[index].url
          ),
          Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  posts[index].title,//post[index].title
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    posts[index].author, //post[index].author
                )
              ],
            ),
          )
        ],
      );
    }
  }

class GridViewCountDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index',style: TextStyle(fontSize: 18.0,color: Colors.grey)),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount:3,//一行多少列
      crossAxisSpacing: 16.0,//交叉间距
      mainAxisSpacing: 18.0,//主轴间距
      //scrollDirection: Axis.horizontal,//水平滚动
      //scrollDirection: Axis.vertical,//竖直滚动
      children: _buildTiles(100),
    );
  }
}