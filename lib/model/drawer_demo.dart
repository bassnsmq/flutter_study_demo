import 'package:flutter/material.dart';
class drawer_demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            //显示名字
            accountName: Text('chenchufeng',style: TextStyle(fontWeight:FontWeight.bold )),
            //显示邮箱
            accountEmail: Text('2418267675@qq.com'),
            //头像
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://b-ssl.duitang.com/uploads/item/201502/10/20150210223250_5dJeC.jpeg'),
            ),
            //装饰
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage('http://b-ssl.duitang.com/uploads/item/201805/13/20180513224039_tgfwu.png'),//背景图片
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight
                    )
                )

            ),
          ),
          ListTile(
            title: Text('Messages',textAlign: TextAlign.right,),//内容标题
            trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),//右边的图标
            leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),//右边的图标
            onTap: () => Navigator.pop(context),//点击关闭
          ),
          ListTile(
            title: Text('Favorite',textAlign: TextAlign.right,),//内容标题
            trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),//右边的图标
            leading: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),//右边的图标
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Setting',textAlign: TextAlign.right,),//内容标题
            trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),//右边的图标
            leading: Icon(Icons.settings,color: Colors.black12,size: 22.0,),//右边的图标
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

}