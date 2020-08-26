import 'package:flutter/material.dart';

/**
 * 分类页面
 */
class CategoryPage extends StatefulWidget{
  CategoryPage({Key key}): super(key: key);
  _CategoryPageState createState() => _CategoryPageState();
}
class _CategoryPageState extends State<CategoryPage>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Row(//将自定义的tabs方到title里面
            children: [
              Expanded(
                child: TabBar(
                  isScrollable: true,//多个按钮可以滑动
                  indicatorColor: Colors.red,//指示器的颜色
                  labelColor:Colors.yellow,//选中的颜色
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,//指示器的大小
                  tabs: [
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                RaisedButton(
                  child: Text("去表单页面"),
                  onPressed: (){
                    /*Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FromPage(),
                          ),
                        );*/
                    Navigator.pushNamed(context, '/from');
                  },
                ),
                RaisedButton(
                  child: Text("去tabControler页面"),
                  onPressed: (){
                    /*Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FromPage(),
                          ),
                        );*/
                    Navigator.pushNamed(context, '/tabController');
                  },
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("您好"),
                ),
              ],
            ),
            ListView(
              children: [
                RaisedButton(
                  child: Text("去表单页面"),
                  onPressed: (){
                    /*Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FromPage(),
                          ),
                        );*/
                    Navigator.pushNamed(context, '/from');
                  },
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("您好"),
                ),
              ],
            ),
            ListView(
              children: [
                RaisedButton(
                  child: Text("去表单页面"),
                  onPressed: (){
                    /*Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FromPage(),
                          ),
                        );*/
                    Navigator.pushNamed(context, '/from');
                  },
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("您好"),
                ),
              ],
            ),
            ListView(
              children: [
                RaisedButton(
                  child: Text("去表单页面"),
                  onPressed: (){
                    /*Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FromPage(),
                          ),
                        );*/
                    Navigator.pushNamed(context, '/from');
                  },
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("您好"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}