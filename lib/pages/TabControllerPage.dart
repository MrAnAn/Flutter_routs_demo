import 'package:flutter/material.dart';

/**
 * 使用TabControllerPage实现东部tab的切换
 */
class TabControllerPage extends StatefulWidget{
  //TabControllerPage({Key key}): super(key: key);
  _TabControllerPageState createState() => _TabControllerPageState();
}
class _TabControllerPageState extends State<TabControllerPage> with SingleTickerProviderStateMixin{
 //定义TabController
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(
      vsync: this,//固定写法
      length: 2,//tabBar的长度
    );
    //添加时间监听
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabControllerPage"),
        bottom: TabBar(
          controller: this._tabController,//这句话一定要写,否则报错
          tabs: [
            Tab(text: "热销"),
            Tab(text: "推荐"),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,//这句话一定要写,否则报错
        children: [
          ListView(
            children: [
              ListTile(
                title: Text("第一"),
              ),
            ],
          ),
          ListView(
            children: [
              ListTile(
                title: Text("第二"),
              ),
            ],
          ),
        ],
      ),
    );
  }

}