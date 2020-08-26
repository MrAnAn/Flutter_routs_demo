import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'CategortPage.dart';
import 'SettingsPage.dart';
import 'ZoomPage.dart';

/**
 * 首页
 */
class IndexPage extends StatefulWidget{
  IndexPage({Key key}): super(key:key);
  _IndexPageState createState() => _IndexPageState();
}
class _IndexPageState extends State<IndexPage>{

  int _currentIndex = 0;

  List _pagelist = [
    HomePage(),//tabs首页
    CategoryPage(),//分类页面
    SettingsPage(),//设置界面
    ZoomPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("首页"),
      ),*/
      body: Container(
        child: this._pagelist[_currentIndex],
      ),
      //配置底部的导航
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,//表示有多个tabs
        fixedColor: Colors.green,//tabs选中的颜色
        currentIndex: this._currentIndex,//当前选中的tabs
        onTap: (int index){//当选中按钮的时间的回掉函数,会返回一个按钮的索引
          setState(() {//要改变Widget的值必须要写他
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_out_map),
            title: Text("更多"),
          ),
        ],
      ),
      //定义抽屉组件
      drawer: Drawer(
        child: Center(
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    /*child: DrawerHeader(
                      child: Icon(Icons.account_balance),
                      decoration: BoxDecoration(
                        color: Colors.grey
                      ),
                    ),*/
                    //使用UserAccountsDrawerHeader
                    child: UserAccountsDrawerHeader(
                      accountName: Text("安安你"),
                      accountEmail: Text("67876867"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(""),
                      )
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.ac_unit),
                ),
                title: Text("我的空间"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.repeat),
                ),
                //user
                title: Text("用户重心(点击去用户中心)"),
                onTap: (){//去用户中心,隐藏侧边栏,发布会的时间直接回到首页
                  Navigator.of(context).pop();//先返回一下
                  Navigator.pushNamed(context,'/user');
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text("我的空间"),
              ),
              Divider(),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Center(child: Text("右边抽屉蓝")),
      ),
    );
  }
}